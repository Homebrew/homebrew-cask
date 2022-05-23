cask "volanta" do
  version "1.2.26,5977f37d"
  sha256 "4d2b39a79a14dffbc7ec66dcfeb6f38d48dbd8aa195eade8a68d25bba19e6739"

  url "https://cdn.volanta.app/software/volanta-app/#{version.csv.first}-#{version.csv.second}/volanta-#{version.csv.first}.dmg"
  name "Volanta"
  desc "Personal flight tracker"
  homepage "https://volanta.app/roadmap/"

  livecheck do
    url "https://api.volanta.app/api/v1/ClientUpdate/latest-mac.yml"
    strategy :page_match do |page|
      match = page.match(%r{volanta-app/(\d+(?:\.\d+)+)-(.+)/}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Volanta.app"

  zap trash: [
    "~/Library/Application Support/Volanta",
    "~/Library/Logs/Volanta",
    "~/Library/Preferences/orbx.volanta.plist",
    "~/Library/Saved Application State/orbx.volanta.savedState",
  ]
end

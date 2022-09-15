cask "volanta" do
  version "1.3.11,38073fe6"
  sha256 "16e6715dab6fd45a4ca21881ffcd430cd6ef7d13fd106eb87507b6de097eb155"

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

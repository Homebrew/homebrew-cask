cask "volanta" do
  version "1.0.20,c2e7d5b6"
  sha256 "4298b7df1e474bcd92fc479678f7d1febfb4475f4436054a193d9de875862207"

  url "https://cdn.volanta.app/software/volanta-app/#{version.before_comma}-#{version.after_comma}/volanta-#{version.before_comma}.dmg"
  name "Volanta"
  desc "Personal flight tracker"
  homepage "https://volanta.app/roadmap/"

  livecheck do
    url "https://api.volanta.app/api/v1/ClientUpdate/latest-mac.yml"
    strategy :page_match do |page|
      match = page.match(%r{volanta-app/(\d+(?:\.\d+)*)-(.+)/}i)
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

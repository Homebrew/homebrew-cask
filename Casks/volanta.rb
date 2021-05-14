cask "volanta" do
  version "1.0.26,f1bff15f"
  sha256 "8b6e6f43c8d356f88fbf5114ca6b57f10232fcf137d8c9af9771220c770d5ddd"

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

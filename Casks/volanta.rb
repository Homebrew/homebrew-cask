cask "volanta" do
  version "1.0.29,4ba3ea3c"
  sha256 "e974850e2b4bc2da9c03dd3effbf049f58fa12e4d61fd5e30c34f34133b9fa3d"

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

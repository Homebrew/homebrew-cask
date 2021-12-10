cask "volanta" do
  version "1.1.11,58470a63"
  sha256 "51b9e61379ff029b7dad28feca4056c8a6d75ab8aaf20421f150bccc4eda8523"

  url "https://cdn.volanta.app/software/volanta-app/#{version.before_comma}-#{version.after_comma}/volanta-#{version.before_comma}.dmg"
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

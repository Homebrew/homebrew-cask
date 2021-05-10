cask "webull" do
  version "5.0.1_us"
  sha256 "5225d65bdbcd694315434ad4a287ddd1f48afd509faa9bd320d45fc4c9d811d0"

  url "https://pub.webull.com/us/desktop/Webull%20Desktop%20#{version}.dmg"
  name "Webull"
  desc "Desktop client for Webull Financial LLC"
  homepage "https://webull.com/"

  app "Webull Desktop.app"

  zap trash: "~/Library/Application Support/Webull Desktop"
end

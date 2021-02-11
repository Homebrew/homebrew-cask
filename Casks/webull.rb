cask "webull" do
  version "4.7.0"
  sha256 "48e01c5b048230793cd9f5925e037b4c396b763a5be0e81d3d906a063f607d29"

  url "https://pub.webull.com/us/desktop/Webull%20Desktop%20#{version}.dmg"
  name "Webull"
  desc "Desktop client for Webull Financial LLC"
  homepage "https://webull.com/"

  app "Webull Desktop.app"

  zap trash: "~/Library/Application Support/Webull Desktop"
end

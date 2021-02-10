cask "webull" do
  version "3.22.20"
  sha256 "dd1658952e3b1b1fecb55628ba407322fb7b8976330e8a334ff8a8540965e735"

  url "https://pub.webull.com/global/DesktopClient/MacOS/Webull-#{version}.dmg"
  name "Webull"
  desc "Desktop client for Webull Financial LLC"
  homepage "https://webull.com/"

  app "Webull.app"

  zap trash: [
    "~/Library/Application Support/Webull Desktop",
  ]
end

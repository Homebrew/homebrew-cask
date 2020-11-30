cask "ui-browser" do
  version "3.0.0"
  sha256 "ec1d05f2c64ae1843939df1b449a9861fcdbc2d07bd22ce6fa57cf72be31702e"

  url "https://pfiddlesoft.com/uibrowser/downloads/UIBrowser#{version.no_dots}.dmg"
  appcast "https://pfiddlesoft.com/uibrowser/index-downloads.html"
  name "UI Browser"
  homepage "https://pfiddlesoft.com/uibrowser/"

  app "UI Browser.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/com.pfiddlesoft.uibrowser.help*",
    "~/Library/Preferences/com.pfiddlesoft.uibrowser.plist",
  ]
end

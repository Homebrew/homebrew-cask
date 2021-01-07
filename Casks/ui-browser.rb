cask "ui-browser" do
  version "3.0.2"
  sha256 "a5695d3046a2230a0e56cbda68829802801d74afc39d4320161fef668b3a0376"

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

cask "ui-browser" do
  version "2.9.2"
  sha256 "d2870ee3f85ca822bc9dfe819fffa46085a534db3e3bcbff96f785ecfd528959"

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

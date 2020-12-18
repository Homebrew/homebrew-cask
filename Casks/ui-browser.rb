cask "ui-browser" do
  version "3.0.1"
  sha256 "aca18de8e6df7a7b92a5e5fcb25f35a3c053a1ee9b338e4495fff97572ceadcb"

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

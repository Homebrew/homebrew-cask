cask "ui-browser" do
  version "3.0.2"
  sha256 "a5695d3046a2230a0e56cbda68829802801d74afc39d4320161fef668b3a0376"

  url "https://pfiddlesoft.com/uibrowser/downloads/UIBrowser#{version.no_dots}.dmg"
  name "UI Browser"
  homepage "https://pfiddlesoft.com/uibrowser/"

  livecheck do
    url "https://pfiddlesoft.com/uibrowser/index-downloads.html"
    strategy :page_match
    regex(/href=.*?UI\ Browser\ (\d+(?:\.\d+)*)/i)
  end

  app "UI Browser.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/com.pfiddlesoft.uibrowser.help*",
    "~/Library/Preferences/com.pfiddlesoft.uibrowser.plist",
  ]
end

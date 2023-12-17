cask "ui-browser" do
  version "3.0.2"
  sha256 "a5695d3046a2230a0e56cbda68829802801d74afc39d4320161fef668b3a0376"

  url "https://s3.amazonaws.com/latenightsw.com/UIBrowser/UIBrowser#{version.no_dots}.dmg",
      verified: "s3.amazonaws.com/latenightsw.com/"
  name "UI Browser"
  desc "Assistant for Apple's Accessibility and AppleScript GUI scripting"
  homepage "https://latenightsw.com/freeware/ui-browser/"

  deprecate! date: "2023-12-17", because: :discontinued

  depends_on macos: ">= :sierra"

  app "UI Browser.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/com.pfiddlesoft.uibrowser.help*",
    "~/Library/Preferences/com.pfiddlesoft.uibrowser.plist",
  ]
end

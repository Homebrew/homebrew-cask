cask "textmate" do
  version "2.0.6"
  sha256 "fd4cf536c2e4bb703306737213babd36c0d548734de5de5ad78f2e6b8761627f"

  # github.com/textmate/textmate/ was verified as official when first introduced to the cask
  url "https://github.com/textmate/textmate/releases/download/v#{version}/TextMate_#{version}.tbz"
  appcast "https://api.textmate.org/releases/release?os=10.14.6",
          must_contain: version
  name "TextMate"
  homepage "https://macromates.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TextMate.app"
  binary "#{appdir}/TextMate.app/Contents/Resources/mate"

  uninstall quit: "com.macromates.TextMate"

  zap trash: [
    "~/Library/Application Support/TextMate",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macromates.textmate.sfl2",
    "~/Library/Caches/com.apple.helpd/Generated/TextMate #{version.major} Help*",
    "~/Library/Caches/com.macromates.TextMate",
    "~/Library/Preferences/com.macromates.TextMate.plist",
    "~/Library/Preferences/com.macromates.TextMate.preview.plist",
    "~/Library/Saved Application State/com.macromates.TextMate.savedState",
  ]
end

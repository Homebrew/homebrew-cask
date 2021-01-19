cask "textmate" do
  version "2.0.15"
  sha256 "36b5ad38e05558b7af2549de56f4d2fdab0ae90abecb515874ef8a47a680226c"

  url "https://github.com/textmate/textmate/releases/download/v#{version}/TextMate_#{version}.tbz",
      verified: "github.com/textmate/textmate/"
  appcast "https://api.textmate.org/releases/release?os=10.14.6",
          must_contain: version
  name "TextMate"
  desc "General-purpose text editor"
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

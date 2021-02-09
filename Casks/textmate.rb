cask "textmate" do
  version "2.0.17"
  sha256 "78c0fd87506ac2ed984912296a8f6d5c69ff4c1616cac506f852d2b5f5c884eb"

  url "https://github.com/textmate/textmate/releases/download/v#{version}/TextMate_#{version}.tbz",
      verified: "github.com/textmate/textmate/"
  name "TextMate"
  desc "General-purpose text editor"
  homepage "https://macromates.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

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

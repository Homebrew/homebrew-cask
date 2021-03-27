cask "textmate" do
  version "2.0.19"
  sha256 "e0117fc281931883fa4b40daf6f594cb9cdc076190ddf50dc40e6913ea6bdcfa"

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

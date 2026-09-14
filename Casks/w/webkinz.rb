cask "webkinz" do
  version "1.7.9"
  sha256 "3040892fc1f0fd67208f54cb788177207fe61963ae546117423eecd0c22110e0"

  url "https://downloads.webkinz.com/apps/wxsetup-#{version}.dmg"
  name "Webkinz Classic"
  desc "Virtual pet MMO"
  homepage "https://webkinz.com/"

  livecheck do
    url "https://downloads.webkinz.com/apps/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "Webkinz.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ganz.webkinz.sfl*",
    "~/Library/Application Support/Webkinz",
    "~/Library/Logs/Webkinz",
    "~/Library/Preferences/Ganz.Webkinz.plist",
    "~/Library/Saved Application State/Ganz.Webkinz.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

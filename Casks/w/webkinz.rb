cask "webkinz" do
  version "1.7.6"
  sha256 "1f8f6f5fb24e9e4681c3ec4354ea35a4b6f3beca846031cc2b17db0fd7509f3d"

  url "https://downloads.webkinz.com/apps/wxsetup-#{version}.dmg"
  name "Webkinz Classic"
  desc "Virtual pet MMO"
  homepage "https://webkinz.com/"

  livecheck do
    url "https://downloads.webkinz.com/apps/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :el_capitan"

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

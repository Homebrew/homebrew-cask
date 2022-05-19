cask "transmit" do
  version "5.8.6"
  sha256 "8bfcc760702ff01d4c907f48eab505e04891b3f89be37c19ac60acfc06d0e293"

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  name "Transmit"
  desc "File transfer application"
  homepage "https://panic.com/transmit/"

  livecheck do
    url "https://library.panic.com/transmit/transmit5/release-integrity/"
    regex(/href=.*?Transmit[\s._-]?v?(\d+(?:\.\d+)+)\.zip/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Transmit.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.panic.transmit.sfl2",
    "~/Library/Application Support/com.panic.Transmit",
    "~/Library/Application Support/Transmit",
    "~/Library/Caches/com.panic.Transmit",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.panic.Transmit",
    "~/Library/Caches/Transmit",
    "~/Library/Preferences/com.panic.Transmit.plist",
    "~/Library/Saved Application State/com.panic.Transmit.savedState",
    "~/Library/WebKit/com.panic.Transmit",
  ]
end

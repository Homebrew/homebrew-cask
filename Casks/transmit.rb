cask "transmit" do
  version "5.8.2"
  sha256 "d1ccc52f08cb2980548675a456d301d74613d7f48461945b5f766676361ad7a0"

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
    "~/Library/Application Support/Transmit",
    "~/Library/Application Support/com.panic.Transmit",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.panic.transmit.sfl2",
    "~/Library/Caches/com.panic.Transmit",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.panic.Transmit",
    "~/Library/Caches/Transmit",
    "~/Library/Preferences/com.panic.Transmit.plist",
    "~/Library/Saved Application State/com.panic.Transmit.savedState",
    "~/Library/WebKit/com.panic.Transmit",
  ]
end

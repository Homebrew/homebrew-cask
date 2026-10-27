cask "vero" do
  version "0.20.2651"
  sha256 "7f0dc6116a56aacf61b46ef420ded9eec77152037211f1301d5eacc744be57cb"

  url "https://downloads.vero.co/vero-beta-#{version}.dmg"
  name "VERO"
  desc "Ad-free, Algorithm-free Social"
  homepage "https://vero.co/"

  livecheck do
    url "https://vero.co/download/desktop/beta/macos"
    strategy :header_match
  end

  depends_on :macos

  app "VERO.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.vero.desktop.sfl*",
    "~/Library/Application Support/VERO",
    "~/Library/Logs/VERO",
    "~/Library/Preferences/co.vero.desktop.plist",
    "~/Library/Saved Application State/co.vero.desktop.savedState",
  ]
end

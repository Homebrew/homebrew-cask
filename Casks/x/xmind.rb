cask "xmind" do
  version "27.01.05086-202610272240"
  sha256 "dc146ea740317194db0ba6005f0a87dbba573db42d7ff2b02e855f38c77446a5"

  url "https://dl3.xmind.net/Xmind-for-macOS-#{version}.dmg"
  name "XMind"
  desc "Mind mapping and brainstorming tool"
  homepage "https://www.xmind.net/"

  livecheck do
    url "https://www.xmind.net/zen/download/mac/"
    regex(/XMind[._-]for[._-]macOS[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
    strategy :header_match
  end

  conflicts_with cask: "xmind@beta"
  depends_on macos: :monterey

  app "Xmind.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.xmind.vana.app.sfl*",
    "~/Library/Application Support/Xmind",
    "~/Library/Preferences/net.xmind.vana.app.plist",
    "~/Library/Saved Application State/org.xmind.cathy.application.savedState",
    "~/Library/XMind",
  ]
end

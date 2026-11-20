cask "xmind" do
  version "27.01.05089-202611160640"
  sha256 "c0e0b60650659ef5ebee67b9c76e8c7c94a822d730cb69d075f3af40a32a9382"

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

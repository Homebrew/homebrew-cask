cask "xmind" do
  version "27.01.05085-202610201924"
  sha256 "1aeded9667b24005bf5ac3777c4473ccc4c20712e68228a425092b79b6d3cad4"

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

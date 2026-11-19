cask "youku" do
  version "9.5.6.1001"
  sha256 "760731a825c63be82f96a2b460125d844121a956334123e176398961b9670abf"

  url "https://pcclient.download.youku.com/iku_electron_client/youkuclient_setup_#{version}.dmg",
      user_agent: :fake
  name "Youku"
  name "优酷"
  desc "Chinese video streaming and sharing platform"
  homepage "https://youku.com/product/index"

  livecheck do
    url :homepage
    regex(/youkuclient[._-]setup[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on :macos

  app "优酷.app"

  zap trash: [
    "~/Library/Application Scripts/com.youku.mac",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.youku.mac.sfl*",
    "~/Library/Application Support/youku-app",
    "~/Library/Caches/com.youku.mac",
    "~/Library/Containers/com.youku.mac",
    "~/Library/HTTPStorages/com.youku.mac",
    "~/Library/Logs/优酷",
    "~/Library/Preferences/com.youku.mac.plist",
    "~/Library/Saved Application State/com.youku.mac.savedState",
  ]
end

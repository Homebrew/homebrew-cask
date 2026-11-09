cask "youku" do
  version "9.5.5.1001"
  sha256 "b6dfeec1fb75aa6e1ab9da0b7121de48642197776f5b2144978ebdf96ad47e44"

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

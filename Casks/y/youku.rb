cask "youku" do
  version "9.2.55.1002"
  sha256 "384695797d43b228d14e511295309b27610a8d0380e1fe1aa05362d79734d33c"

  url "https://pcclient.download.youku.com/iku_electron_client/youkuclient_setup_#{version}.dmg"
  name "Youku"
  name "优酷"
  desc "Chinese video streaming and sharing platform"
  homepage "https://youku.com/product/index"

  livecheck do
    url :homepage
    regex(/youkuclient[._-]setup[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :mojave"

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

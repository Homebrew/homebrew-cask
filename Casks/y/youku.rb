cask "youku" do
  version "9.2.41.1001"
  sha256 "f2e356db17215d6b9ae033714cd983641a61f8de95075ba934b46c898f5b65f5"

  url "https://pcclient.download.youku.com/iku_electron_client/youkuclient_setup_#{version}.dmg"
  name "Youku"
  name "优酷"
  desc "Chinese video streaming and sharing platform"
  homepage "https://youku.com/product/index"

  livecheck do
    url :homepage
    regex(/youkuclient[._-]setup[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "优酷.app"

  zap trash: [
    "~/Library/Application Scripts/com.youku.mac",
    "~/Library/Application Support/youku-app/",
    "~/Library/Containers/com.youku.mac",
    "~/Library/Containers/优酷",
    "~/Library/Preferences/com.youku.mac.plist",
    "~/Library/Saved Application State/com.youku.mac.savedState/",
  ]
end

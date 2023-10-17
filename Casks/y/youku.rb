cask "youku" do
  version "9.2.37.1001"
  sha256 "90c5cb1c8f3991a179bce3dae9e7256051af25a9edf0eba06814ed035785ec7c"

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

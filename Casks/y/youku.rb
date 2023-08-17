cask "youku" do
  version "9.2.30.1001"
  sha256 "78ee667b52ef8f713ed6abacd773559155c5963b78f02afacb7cb52d9c0b7a0e"

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

cask "youku" do
  version "1.9.5.6.11184"
  sha256 "33a3cf75bd974f50bef26c13045822a04d8ce52a3d7467b873e44c379008556c"

  url "https://pcclient.download.youku.com/ikumac/youkumac_#{version}.dmg"
  name "Youku"
  name "优酷"
  desc "Chinese video streaming and sharing platform"
  homepage "https://pd.youku.com/pc"

  livecheck do
    url "https://pd.youku.com/pc"
    regex(%r{href=.*?/youkumac_(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "优酷.app"

  zap trash: [
    "~/Library/Application Scripts/com.youku.mac",
    "~/Library/Containers/com.youku.mac",
  ]
end

cask "youku" do
  version "1.8.8.11134"
  sha256 "fca02ea6a0a7c939cabecc2a3abf307537c74d6f63bf1493c15981b7fe6108ab"

  url "https://pcclient.download.youku.com/ikumac/youkumac_#{version}.dmg"
  appcast "https://pd.youku.com/pc"
  name "Youku"
  name "优酷"
  desc "Chinese video streaming and sharing platform"
  homepage "https://pd.youku.com/pc"

  app "优酷.app"

  zap trash: [
    "~/Library/Application Scripts/com.youku.mac",
    "~/Library/Containers/com.youku.mac",
  ]
end

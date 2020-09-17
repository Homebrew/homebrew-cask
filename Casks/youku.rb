cask "youku" do
  version "1.8.6.09156"
  sha256 "9c8a993803c6521d8562a24bdba793e03c1d5c78dc9cb59e46aaa6dc38ea4d2d"

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

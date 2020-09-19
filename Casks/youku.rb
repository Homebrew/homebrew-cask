cask "youku" do
  version "1.8.6.09188"
  sha256 "e79d6559f3de8c71fe45992cc30f8e40a4b7aca29da73c438a7ed180e16cc967"

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

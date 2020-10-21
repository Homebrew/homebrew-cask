cask "youku" do
  version "1.8.7.10142"
  sha256 "ae4c397dd9fe3e8089963a3c45e106eea78933cd2b80dc74c62b033877e3af89"

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

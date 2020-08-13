cask "youku" do
  version "1.8.5.08111"
  sha256 "de7fd34278dac6f74ef09960d5646f1154c1e720ba5c7053307f9e3a05b19c5c"

  url "https://pcclient.download.youku.com/ikumac/youkumac_#{version}.dmg"
  appcast "https://pd.youku.com/pc"
  name "Youku"
  name "优酷"
  homepage "https://pd.youku.com/pc"

  app "优酷.app"

  zap trash: [
    "~/Library/Application Scripts/com.youku.mac",
    "~/Library/Containers/com.youku.mac",
  ]
end

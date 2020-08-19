cask "youku" do
  version "1.8.5.08173"
  sha256 "0410fbcf1ed49eac3d21714ace2532087ca1cbe57fc3c9e673d54108215fccd3"

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

cask "youku" do
  version "1.8.9.12225"
  sha256 "5175f910dcdcf6fdd4e25667e5a834ac740afd8d71c17e9bb3c3bc6970f49a19"

  url "https://pcclient.download.youku.com/ikumac/youkumac_#{version}.dmg"
  name "Youku"
  name "优酷"
  desc "Chinese video streaming and sharing platform"
  homepage "https://pd.youku.com/pc"

  livecheck do
    url "https://pd.youku.com/pc"
    strategy :page_match
    regex(%r{href=.*?/youkumac_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "优酷.app"

  zap trash: [
    "~/Library/Application Scripts/com.youku.mac",
    "~/Library/Containers/com.youku.mac",
  ]
end

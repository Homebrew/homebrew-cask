cask "youku" do
  version "1.9.5.10298"
  sha256 "b366b0ab6d5c4fff3e39b72bf464bad1005c8b200bc42053d3892ff80b1b7d04"

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

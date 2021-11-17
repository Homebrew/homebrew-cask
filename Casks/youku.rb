cask "youku" do
  version "1.9.5.4.11151"
  sha256 "0d9bdbe8158deeb710fcaddda9895aee779cb8d9d0ed8dd62b1f9ab7f18f2158"

  url "https://pcclient.download.youku.com/ikumac/youkumac_#{version}.dmg"
  name "Youku"
  name "优酷"
  desc "Chinese video streaming and sharing platform"
  homepage "https://pd.youku.com/pc"

  livecheck do
    url "https://pd.youku.com/pc"
    strategy :page_match
    regex(%r{href=.*?/youkumac_(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "优酷.app"

  zap trash: [
    "~/Library/Application Scripts/com.youku.mac",
    "~/Library/Containers/com.youku.mac",
  ]
end

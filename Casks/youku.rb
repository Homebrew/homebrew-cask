cask "youku" do
  version "1.9.7.05209"
  sha256 "df6313cb24ffe620b9927a5948c98cf28d6842a10aca05c4928e8fbdad3fbe6d"

  url "https://pcclient.download.youku.com/ikumac/youkumac_#{version}.dmg"
  name "Youku"
  name "优酷"
  desc "Chinese video streaming and sharing platform"
  homepage "https://youku.com/product/index"

  livecheck do
    url :homepage
    regex(/ikumac.*?youkumac[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "优酷.app"

  zap trash: [
    "~/Library/Application Scripts/com.youku.mac",
    "~/Library/Containers/com.youku.mac",
  ]
end

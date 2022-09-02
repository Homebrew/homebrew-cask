cask "youku" do
  version "1.9.8.1.090210"
  sha256 "d978273dd9c1ab3ee9f45522c438d0f2ac956a4158c456b06195808a250f840a"

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

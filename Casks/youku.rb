cask "youku" do
  version "1.9.5.1.11054"
  sha256 "1f26a649891334a0bc3e083dc908f612732edab800990de4df84676237d6fc83"

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

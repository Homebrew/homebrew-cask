cask "youku" do
  version "1.9.0.04201"
  sha256 "7e53d786cad61dbb9efc312477bd282d5329a152e0ef5eb4136509e2893320b9"

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

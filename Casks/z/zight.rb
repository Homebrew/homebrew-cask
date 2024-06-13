cask "zight" do
  version "8.2.0,2812"
  sha256 :no_check

  url "https://d2plwz9jdz9z5d.cloudfront.net/mac/latest/Zight.zip",
      verified: "d2plwz9jdz9z5d.cloudfront.net/mac/latest/"
  name "Zight"
  desc "Visual communication platform"
  homepage "https://zight.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Zight.app"

  zap trash: [
    "~/Library/Application Scripts/com.linebreak.CloudAppMacOSX.Share",
    "~/Library/Application Support/com.linebreak.CloudAppMacOSX",
    "~/Library/Caches/com.linebreak.CloudAppMacOSX",
    "~/Library/Containers/com.linebreak.CloudAppMacOSX-LaunchAtLoginHelper",
    "~/Library/Containers/com.linebreak.CloudAppMacOSX.Share",
    "~/Library/Logs/Zight",
    "~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist",
  ]
end

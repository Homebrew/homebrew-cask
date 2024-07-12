cask "zight" do
  version "8.2.0,2812"
  sha256 "fcb114d5807269d00a30bade35f581639719fef18b6d9f893a7fa26c71bca23c"

  url "https://downloads.zight.com/mac/Zight-#{version.csv.first}.#{version.csv.second}.zip"
  name "Zight"
  desc "Visual communication platform"
  homepage "https://zight.com/"

  livecheck do
    url "https://share.zight.com/api/v4/clients/mac/current-version"
    strategy :sparkle
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

cask "zight" do
  version "8.4.1,2981"
  sha256 "36488d2aaf0120188c65fb5bc5d0a2de20223226aa9be6a6ae45855fecdcf635"

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

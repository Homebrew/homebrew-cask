cask "zight" do
  version "8.5.3,3538"
  sha256 "ddf6f807fc1fcdf7d2473df9f1905f1c675537cc576f056c6e018a7a7bd0b213"

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

cask "zight" do
  version "8.4.0,2954"
  sha256 "6a7272dc5c12c30eb711b97b65fcf15a71b0f85f322c17ca17d6216400408e5f"

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

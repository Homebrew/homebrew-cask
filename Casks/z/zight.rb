cask "zight" do
  version "8.5.1,3475"
  sha256 "27866bf8c0752ecaa9d102559b058279002c0f804c197d2816bea1334ab923a8"

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

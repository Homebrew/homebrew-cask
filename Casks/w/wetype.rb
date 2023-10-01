cask "wetype" do
  version "0.9.9,214"
  sha256 "d67d45a5deb39c460b35e311eb8f66c45347773e2619e58616b8de251b707cb7"

  url "https://wetype.wxqcloud.qq.com/app/mac/#{version.csv.first}/WeTypeInstaller_#{version.csv.first}_#{version.csv.second}.zip"
  name "WeType"
  desc "Input method by Wexin, Tencent"
  homepage "https://z.weixin.qq.com/"

  livecheck do
    strategy :sparkle
    url "https://download.weread.qq.com/app/wxkb/mac/updates.xml"
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  installer manual: "WeTypeInstaller_#{version.csv.first}_#{version.csv.second}.app"

  uninstall delete: "/Library/Input Methods/WeType.app"

  zap trash: [
    "~/Library/Application Support/WeType",
    "~/Library/Caches/com.tencent.inputmethod.wetype",
    "~/Library/Caches/WeType",
    "~/Library/HTTPStorages/com.tencent.inputmethod.wetype",
    "~/Library/Preferences/com.tencent.inputmethod.wetype.plist",
  ]
end

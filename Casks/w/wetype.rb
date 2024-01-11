cask "wetype" do
  version "1.0.3,269"
  sha256 "8ffca2c895086677997b43ff9d442fb013e3abbdba88113f9378e3f43c1502a3"

  url "https://wetype.wxqcloud.qq.com/app/mac/#{version.csv.first}/WeTypeInstaller_#{version.csv.first}_#{version.csv.second}.zip"
  name "WeType"
  desc "Text input app"
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

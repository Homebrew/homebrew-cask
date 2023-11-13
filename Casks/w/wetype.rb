cask "wetype" do
  version "1.0.0,236"
  sha256 "a88c7f3ec1d183dca6faa35c3a0e9d0345c680e62fd125349732ae42ef8a9f23"

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

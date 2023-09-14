cask "wetype" do
  version "0.9.8,198"
  sha256 "d27c39beeb2b4d1ce8da2af48417465539d321f25f4249ad4034d62f48bb6836"

  url "https://wetype.wxqcloud.qq.com/app/mac/#{version.csv.first}/WeTypeInstaller_#{version.csv.first}_#{version.csv.second}.zip"
  name "WeType"
  desc "Input method by Weixin"
  homepage "https://z.weixin.qq.com/"

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

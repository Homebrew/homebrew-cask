cask "wetype" do
  version "1.4.3,544"
  sha256 "3b35f531aefedfa682f48ba144a53eeefe193b3e681cb8e4d70703623c13188c"

  url "https://download.z.weixin.qq.com/app/mac/#{version.csv.first}/WeTypeInstaller_#{version.csv.first}_#{version.csv.second}.zip"
  name "WeType"
  name "微信输入法"
  desc "Text input app from WeChat team for Chinese users"
  homepage "https://z.weixin.qq.com/"

  livecheck do
    url "https://z.weixin.qq.com/web/api/app_info"
    regex(/WeTypeInstaller[._-]v?(\d+(?:\.\d+)+)[._-](\d+)\.zip/i)
    strategy :json do |json, regex|
      match = json.dig("data", "mac", "download_link")&.match(regex)

      # Try to match the version from the `InstallInfo` file name if the
      # Mac installer file name doesn't include a version
      match ||= json.dig("data", "mac", "InstallInfo")&.match(/v?(\d+(?:\.\d+)+)[_-](\d+)/i)
      next unless match

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true

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

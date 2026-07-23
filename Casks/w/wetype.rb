cask "wetype" do
  version "2.2.1,634"
  sha256 "e71331d620db43ee5ae99ca668ff8c14d15e37e1c34ab702ecf9c50e9e370840"

  url "https://download.weread.qq.com/app/wxkb/mac/#{version.csv.first}/WeType_#{version.csv.first}_#{version.csv.second}.zip"
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
  depends_on :macos

  input_method "WeType.app"

  zap trash: [
    "~/Library/Application Support/WeType",
    "~/Library/Caches/com.tencent.inputmethod.wetype",
    "~/Library/Caches/WeType",
    "~/Library/HTTPStorages/com.tencent.inputmethod.wetype",
    "~/Library/Preferences/com.tencent.inputmethod.wetype.plist",
  ]
end

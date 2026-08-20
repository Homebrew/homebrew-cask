cask "wetype" do
  version "2.2.3,657"
  sha256 "8ef48bb21fe9d7b017b8a09fb9496b1b8f960ad960db27872226e08c09db264b"

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

  # The bundle moves itself to `/Library/Input Methods` on first launch,
  # so let's put it there to begin with to prevent uninstallation issues.
  input_method "WeType.app", target: "/Library/Input Methods/WeType.app"

  zap trash: [
    "~/Library/Application Support/WeType",
    "~/Library/Caches/com.tencent.inputmethod.wetype",
    "~/Library/Caches/WeType",
    "~/Library/HTTPStorages/com.tencent.inputmethod.wetype",
    "~/Library/Preferences/com.tencent.inputmethod.wetype.plist",
  ]

  # The input method is only registered after a reboot, or logging out and back in.
  caveats do
    logout
  end
end

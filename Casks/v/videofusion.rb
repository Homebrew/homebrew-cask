cask "videofusion" do
  version "11.6.0.13281"
  sha256 "223d33a34129773a67de6347b578cb7b48095bef96178817b938b93291453c8f"

  url "https://lf3-package.vlabstatic.com/obj/faceu-packages/Jianying_#{version.dots_to_underscores}_jianyingpro_0_creatortool_nosandbox.dmg"
  name "VideoFusion"
  name "剪映专业版"
  name "Jianying Pro"
  desc "Free all-in-one video editor"
  homepage "https://www.capcut.cn/"

  livecheck do
    url "https://lv-api-hl.ulikecam.com/service/settings/v3/?&aid=3704&rom_version=9965&version_code=328960&channel=jianyingpro_0&device_platform=mac"
    regex(/Jianying[._-]v?(\d+(?:[._]\d+)+).+?\.dmg/i)
    strategy :json do |json, regex|
      # `lastest_stable_url` is an upstream typo of `latest_stable_url`
      url = json.dig("data", "settings", "update_reminder", "lastest_stable_url")
      next if url.blank?

      match = url.match(regex)
      next if match.blank?

      match[1].tr("_", ".")
    end
  end

  auto_updates true
  depends_on :macos

  app "VideoFusion-macOS.app"

  zap trash: [
    "~/Library/Application Scripts/com.lemon.lvpro",
    "~/Library/Caches/com.lemon.lvpro",
    "~/Library/Containers/com.lemon.lvpro",
    "~/Library/HTTPStorages/com.lemon.lvpro",
    "~/Library/Preferences/com.lemon.lvpro.helper.renderer.plist",
    "~/Library/Preferences/com.lemon.lvpro.plist",
  ]
end

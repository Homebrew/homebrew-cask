cask "videofusion" do
  version "7.4.0.11085"
  sha256 "f06d28c606f97d283df81694bef328f30f52c342f0ea1dd79d044bc02bb1412b"

  url "https://lf3-package.vlabstatic.com/obj/faceu-packages/Jianying_#{version.dots_to_underscores}_jianyingpro_0_creatortool.dmg",
      verified: "lf3-package.vlabstatic.com/obj/faceu-packages/"
  name "VideoFusion"
  name "剪映专业版"
  name "Jianying Pro"
  desc "Free all-in-one video editor"
  homepage "https://www.capcut.cn/"

  livecheck do
    url "https://lv-api-hl.ulikecam.com/service/settings/v3/?&aid=3704&rom_version=9965&version_code=328960&channel=jianyingpro_0&device_platform=mac"
    regex(/Jianying[._-]v?(\d+(?:[._]\d+)+).+?\.dmg/i)
    strategy :json do |json, regex|
      url = json.dig("data", "settings", "update_reminder", "lastest_stable_url")
      next if url.blank?

      match = url.match(regex)
      next if match.blank?

      match[1].tr("_", ".")
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "VideoFusion-macOS.app"

  zap trash: [
    "~/Library/Application Scripts/com.lemon.lvpro",
    "~/Library/Containers/com.lemon.lvpro",
  ]
end

cask "videofusion" do
  version "8.2.0.11481"
  sha256 "a79495f2b6829570ba4eb260b537885153b8ed37e5ac637e47c2fec9d6e35832"

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
      # `lastest_stable_url` is an upstream typo of `latest_stable_url`
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

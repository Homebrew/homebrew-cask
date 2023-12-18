cask "videofusion" do
  version "5.0.0.9609"
  sha256 "0c81c6a5a6202d7a1a5f48cb0b9275044d941192d7fd58bd78fdc92220c9500b"

  url "https://lf3-package.vlabstatic.com/obj/faceu-packages/Jianying_#{version.dots_to_underscores}_jianyingpro_0_creatortool.dmg",
      verified: "lf3-package.vlabstatic.com/obj/faceu-packages/"
  name "VideoFusion"
  name "剪映专业版"
  desc "Video editor"
  homepage "https://lv.ulikecam.com/"

  livecheck do
    url "https://lf3-beecdn.bytetos.com/obj/ies-fe-bee/bee_prod/biz_80/bee_prod_80_bee_publish_3563.json"
    regex(/Jianying[._-]v?(\d+(?:[._]\d+)+).*\.dmg/i)
    strategy :json do |json, regex|
      match = json.dig("mac_download_pkg", "channel_default")&.match(regex)
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

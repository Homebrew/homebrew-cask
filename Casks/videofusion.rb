cask "videofusion" do
  version "1.4.1.1156.0"
  sha256 "bd5993eddafc0fcde4f8769a2ed9cdfc4535820bd34c9e71ac1ef6e9e05e40a8"

  url "https://lf3-faceucdn-tos.pstatp.com/obj/faceu-packages/Jianying_#{version.dots_to_underscores}.pkg",
      verified: "lf3-faceucdn-tos.pstatp.com/obj/faceu-packages/"
  name "VideoFusion"
  name "剪映专业版"
  desc "Video editor"
  homepage "https://lv.ulikecam.com/"

  livecheck do
    url "https://lf3-beecdn.bytetos.com/obj/ies-fe-bee/bee_prod/biz_80/bee_prod_80_bee_publish_3563.json"
    strategy :page_match do |page|
      JSON.parse(page)["mac_download_pkg"]["channel_default"][/(\d+(?:_\d+)+)\.pkg/i, 1].tr("_", ".")
    end
  end

  depends_on macos: ">= :mojave"

  pkg "Jianying_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: [
    "com.lemon.lvpro",
    "com.mygreatcompany.pkg.lvpro",
  ]

  zap trash: [
    "~/Library/Caches/com.lemon.ee.lv",
    "~/Library/Preferences/com.lemon.ee.lv.plist",
    "~/Library/Saved Application State/com.lemon.ee.lv.savedState",
  ]
end

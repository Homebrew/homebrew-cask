cask "videofusion" do
  version "1.3.5.636.0"
  sha256 "91b30fb9b66868d5245e10f7bcc0bdc02cfe9487bab84ae6afe429fd44c49e85"

  url "https://lf3-faceucdn-tos.pstatp.com/obj/faceu-packages/Jianying_#{version.dots_to_underscores}.pkg.pkg",
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

  pkg "Jianying_#{version.dots_to_underscores}.pkg.pkg"

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

cask "videofusion" do
  version "1.6.0.1791.0"
  sha256 "13014b117c13eae7bad979f4c878d12cc6b4a364159d76bcf7805e32700b9d0e"

  url "https://lf3-faceucdn-tos.pstatp.com/obj/faceu-packages/Jianying_#{version.dots_to_underscores}.dmg",
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

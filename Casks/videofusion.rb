cask "videofusion" do
  version "3.7.1.8129"
  sha256 "241d8f99796dcbd0508839f5e06cd3f252608a67e34a3e6a628fae9e32b79bb5"

  url "https://lf3-package.vlabstatic.com/obj/faceu-packages/Jianying_#{version.dots_to_underscores}_jianyingpro_0.dmg",
      verified: "lf3-package.vlabstatic.com/obj/faceu-packages/"
  name "VideoFusion"
  name "剪映专业版"
  desc "Video editor"
  homepage "https://lv.ulikecam.com/"

  livecheck do
    url "https://lf3-beecdn.bytetos.com/obj/ies-fe-bee/bee_prod/biz_80/bee_prod_80_bee_publish_3563.json"
    strategy :page_match do |page|
      JSON.parse(page)["mac_download_pkg"]["channel_default"][/(\d+(?:_\d+)+).*\.dmg/i, 1].tr("_", ".")
    end
  end

  depends_on macos: ">= :mojave"

  app "VideoFusion-macOS.app"

  zap trash: [
    "~/Library/Application Scripts/com.lemon.lvpro",
    "~/Library/Containers/com.lemon.lvpro",
  ]
end

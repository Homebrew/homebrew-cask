cask "videofusion" do
  version "2.8.5.6036.0"
  sha256 "09e1524bebcbc0f51080e015fd03d9340783466726f30f86c848ef4a2c6704bb"

  url "https://lf3-package.vlabstatic.com/obj/faceu-packages/Jianying_#{version.dots_to_underscores}.dmg",
      verified: "lf3-package.vlabstatic.com/obj/faceu-packages/"
  name "VideoFusion"
  name "剪映专业版"
  desc "Video editor"
  homepage "https://lv.ulikecam.com/"

  livecheck do
    url "https://lf3-beecdn.bytetos.com/obj/ies-fe-bee/bee_prod/biz_80/bee_prod_80_bee_publish_3563.json"
    strategy :page_match do |page|
      JSON.parse(page)["mac_download_pkg"]["channel_default"][/(\d+(?:_\d+)+)\.dmg/i, 1].tr("_", ".")
    end
  end

  depends_on macos: ">= :mojave"

  app "VideoFusion-macOS.app"

  zap trash: [
    "~/Library/Caches/com.lemon.ee.lv",
    "~/Library/Preferences/com.lemon.ee.lv.plist",
    "~/Library/Saved Application State/com.lemon.ee.lv.savedState",
  ]
end

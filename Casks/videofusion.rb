cask "videofusion" do
  version "1.0.2.0"
  sha256 "5e743f3cc0c8c66c03811e576f19642ca0a0d4423e71a9ad8a6365a8cc3986fb"

  url "https://lf3-faceucdn-tos.pstatp.com/obj/faceu-packages/Jianying_Pro_#{version.dots_to_underscores}.pkg",
      verified: "lf3-faceucdn-tos.pstatp.com/obj/faceu-packages/"
  name "VideoFusion"
  name "剪映专业版"
  desc "Video editor"
  homepage "https://lv.ulikecam.com/"

  depends_on macos: ">= :mojave"

  pkg "Jianying_Pro_#{version.dots_to_underscores}.pkg"

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

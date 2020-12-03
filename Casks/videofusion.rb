cask "videofusion" do
  version "1.0.1"
  sha256 "106328304796a77ddf2180af014e3834c695cef09226a0f412e811f635e66a25"

  # lf3-faceucdn-tos.pstatp.com was verified as official when first introduced to the cask
  url "https://lf3-faceucdn-tos.pstatp.com/obj/faceu-packages/Jianying_Pro_#{version.dots_to_underscores}_0.pkg",
      verified: "lf3-faceucdn-tos.pstatp.com"
  name "VideoFusion"
  name "剪映专业版"
  desc "Video editor"
  homepage "https://lv.ulikecam.com/"

  pkg "Jianying_Pro_#{version.dots_to_underscores}_0.pkg"

  uninstall pkgutil: [
    "com.lemon.lvpro",
    "com.mygreatcompany.pkg.LVPro",
  ]

  zap trash: [
    "~/Library/Caches/com.lemon.ee.lv",
    "~/Library/Preferences/com.lemon.ee.lv.plist",
    "~/Library/Saved Application State/com.lemon.ee.lv.savedState",
  ]
end

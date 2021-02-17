cask "videofusion" do
  version "1.2.1.0"
  sha256 "8bfb284a01d66b35399e311236a2ebbeabd268157e9e8099523716ab9c70ee88"

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

cask "videofusion" do
  version "1.2.5.0"
  sha256 "ba68157a96763f2547ae4e710c3bf64f6eea5bff96d603ad272302cd92e2672c"

  url "https://lf3-faceucdn-tos.pstatp.com/obj/faceu-packages/Jianying_Pro_#{version.dots_to_underscores}.pkg",
      verified: "lf3-faceucdn-tos.pstatp.com/obj/faceu-packages/"
  name "VideoFusion"
  name "剪映专业版"
  desc "Video editor"
  homepage "https://lv.ulikecam.com/"

  livecheck do
    skip "No version information available"
  end

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

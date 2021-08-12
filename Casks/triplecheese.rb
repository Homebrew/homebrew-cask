cask "triplecheese" do
  version "1.3,12092"
  sha256 "d2ed37186ddffe360fb564f357193ac66d09c370fecebbca71e619268ecfb0a7"

  url "https://uhedownloads-heckmannaudiogmb.netdna-ssl.com/releases/TripleCheese_#{version.before_comma.no_dots}_#{version.after_comma}_Mac.zip",
      verified: "uhedownloads-heckmannaudiogmb.netdna-ssl.com/"
  appcast "https://u-he.com/products/triplecheese/releasenotes.html"
  name "Triple Cheese"
  desc "Luscious and cheesy synthesizer"
  homepage "https://u-he.com/products/triplecheese/"

  pkg "TripleCheese_#{version.after_comma}_Mac/TripleCheese 1.3.0 Installer.pkg"

  uninstall pkgutil: [
    "com.u-he.TripleCheese.aax.pkg",
    "com.u-he.TripleCheese.au.pkg",
    "com.u-he.TripleCheese.data.pkg",
    "com.u-he.TripleCheese.documentation.pkg",
    "com.u-he.TripleCheese.presets.pkg",
    "com.u-he.TripleCheese.tuningFiles.pkg",
    "com.u-he.TripleCheese.vst.pkg",
    "com.u-he.TripleCheese.vst3.pkg",
  ]

  caveats do
    reboot
  end
end

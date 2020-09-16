cask "triplecheese" do
  version "1.2.1,3899"
  sha256 "8a73cc611d6065ff11a43e237ff074c9b6eff591a46997362219fe6ac4bcd663"

  # uhedownloads-heckmannaudiogmb.netdna-ssl.com/ was verified as official when first introduced to the cask
  url "https://uhedownloads-heckmannaudiogmb.netdna-ssl.com/releases/TripleCheese_#{version.before_comma.no_dots}_#{version.after_comma}_Mac.zip"
  appcast "https://u-he.com/products/triplecheese/releasenotes.html"
  name "Triple Cheese"
  desc "Luscious and cheesy synthesizer"
  homepage "https://u-he.com/products/triplecheese/"

  pkg "TripleCheese_#{version.after_comma}_Mac/TripleCheese #{version.before_comma} Installer.pkg"

  uninstall pkgutil: [
    "com.u-he.TripleCheese.aax.pkg",
    "com.u-he.TripleCheese.au.pkg",
    "com.u-he.TripleCheese.data.pkg",
    "com.u-he.TripleCheese.documentation.pkg",
    "com.u-he.TripleCheese.presets.pkg",
    "com.u-he.TripleCheese.tuningFiles.pkg",
    "com.u-he.TripleCheese.vst.pkg",
  ]

  caveats do
    reboot
  end
end

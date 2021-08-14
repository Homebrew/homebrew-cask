cask "zebra2" do
  version "2.9.3,12092"
  sha256 "d088d17fc42eca3ffede5f7ee8586dceb19ddc9a29b1829f7d84b15221eb5fb2"

  url "https://uhedownloads-heckmannaudiogmb.netdna-ssl.com/releases/Zebra2_#{version.before_comma.no_dots}_#{version.after_comma}_Mac.zip",
      verified: "uhedownloads-heckmannaudiogmb.netdna-ssl.com/"
  name "Zebra2"
  desc "Wireless modular synthesizer"
  homepage "https://u-he.com/products/zebra2/"

  livecheck do
    url "https://u-he.com/products/zebra2/releasenotes.html"
    strategy :page_match do |page|
      match = page.match(/Zebra\s*(\d+(?:\.\d+)*)\s*\(revision\s*(\d+(?:\.\d+)*)\)/i)
      "#{match[1]},#{match[2]}"
    end
  end

  pkg "Zebra2_#{version.after_comma}_Mac/Zebra2 #{version.before_comma} Installer.pkg"

  uninstall pkgutil: [
    "com.u-he.Zebra2.aax.pkg",
    "com.u-he.Zebra2.au.pkg",
    "com.u-he.Zebra2.data.pkg",
    "com.u-he.Zebra2.documentation.pkg",
    "com.u-he.Zebra2.presets.pkg",
    "com.u-he.Zebra2.tuningFiles.pkg",
    "com.u-he.Zebra2.vst.pkg",
    "com.u-he.Zebra2.vst3.pkg",
  ]

  caveats do
    reboot
  end
end

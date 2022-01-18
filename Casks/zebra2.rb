cask "zebra2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.9.3,12092"
  sha256 "d088d17fc42eca3ffede5f7ee8586dceb19ddc9a29b1829f7d84b15221eb5fb2"

  url "https://uhedownloads-heckmannaudiogmb.netdna-ssl.com/releases/Zebra#{version.major}_#{version.csv.first.no_dots}_#{version.csv.second}_Mac.zip",
      verified: "uhedownloads-heckmannaudiogmb.netdna-ssl.com/"
  name "Zebra2"
  desc "Wireless modular synthesizer"
  homepage "https://u-he.com/products/zebra2/"

  livecheck do
    url "https://u-he.com/products/zebra#{version.major}/releasenotes.html"
    strategy :page_match do |page|
      match = page.match(/Zebra\s*(\d+(?:\.\d+)*)\s*\(revision\s*(\d+(?:\.\d+)*)\)/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  pkg "Zebra#{version.major}_#{version.csv.second}_Mac/Zebra#{version.major} #{version.csv.first} Installer.pkg"

  uninstall pkgutil: [
    "com.u-he.Zebra#{version.major}.aax.pkg",
    "com.u-he.Zebra#{version.major}.au.pkg",
    "com.u-he.Zebra#{version.major}.data.pkg",
    "com.u-he.Zebra#{version.major}.documentation.pkg",
    "com.u-he.Zebra#{version.major}.presets.pkg",
    "com.u-he.Zebra#{version.major}.tuningFiles.pkg",
    "com.u-he.Zebra#{version.major}.vst.pkg",
    "com.u-he.Zebra#{version.major}.vst3.pkg",
    "com.u-he.Zebra#{version.major}.modules.pkg",
    "com.u-he.Zebra#{version.major}.nks.pkg",
    "com.u-he.Zebra#{version.major}.support.pkg",
    "com.u-he.Zebra#{version.major}.themes.pkg",
  ]

  zap trash: [
    "~/Library/Application Support/u-he/Zebra2",
    "~/Library/Application Support/u-he/com.u-he.Zebra2.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.Zebra2.Preferences.txt",
    "~/Library/Application Support/u-he/com.u-he.Zebralette.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.Zebralette.Preferences.txt",
    "~/Library/Application Support/u-he/com.u-he.Zebrify.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.Zebrify.Preferences.txt",
    "~/Library/Application Support/u-he/com.u-he.ZRev.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.ZRev.Preferences.txt",
  ]

  caveats do
    reboot
  end
end

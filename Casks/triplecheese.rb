cask "triplecheese" do
  version "1.3,12092"
  sha256 "d2ed37186ddffe360fb564f357193ac66d09c370fecebbca71e619268ecfb0a7"

  url "https://uhedownloads-heckmannaudiogmb.netdna-ssl.com/releases/TripleCheese_#{version.csv.first.no_dots}_#{version.csv.second}_Mac.zip",
      verified: "uhedownloads-heckmannaudiogmb.netdna-ssl.com/"
  name "Triple Cheese"
  desc "Luscious and cheesy synthesizer"
  homepage "https://u-he.com/products/triplecheese/"

  livecheck do
    url "https://u-he.com/products/triplecheese/releasenotes.html"
    strategy :page_match do |page|
      match = page.match(/Triple\s*Cheese\s*(\d+(?:\.\d+)*)\s*\(revision\s*(\d+(?:\.\d+)*)\)/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  pkg "TripleCheese_#{version.after_comma}_Mac/TripleCheese #{version.before_comma}.0 Installer.pkg"

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

  zap trash: [
    "~/Library/Application Support/u-he/TripleCheese",
    "~/Library/Application Support/u-he/com.u-he.TripleCheese.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.TripleCheese.Preferences.txt",
  ]

  caveats do
    reboot
  end
end

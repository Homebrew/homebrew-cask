cask "tdr-nova" do
  version "2.1.5"
  sha256 "0471edca6a0b8943a104d948a6870be74066847c4224afd31853bb4ab33460aa"

  url "https://www.tokyodawn.net/labs/Nova/#{version}/TDR%20Nova.zip?x24775"
  name "TDR Nova"
  desc "NOVA is a parallel dynamic equalizer"
  homepage "https://www.tokyodawn.net/tdr-nova/5/"

  livecheck do
    skip "No version information available"
  end

  pkg "TDR Nova.pkg"

  uninstall pkgutil: [
    "com.TokyoDawnLabs.TDRNova.VST",
    "com.TokyoDawnLabs.TDRNova.AAX",
    "com.TokyoDawnLabs.TDRNova.AU",
    "com.TokyoDawnLabs.TDRNova.VST3",
  ]
end

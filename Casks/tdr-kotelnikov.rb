cask "tdr-kotelnikov" do
  version "1.6.5"
  sha256 "22dfe5c1b027fef009a5410c90b892608f48aa77e4a7e661210edf51b8d3da52"

  url "https://www.tokyodawn.net/labs/Kotelnikov/#{version}/TDR%20Kotelnikov.zip?x24775"
  name "tdr-kotelnikov"
  desc "Wideband dynamics processor combining range control with flexibility"
  homepage "https://www.tokyodawn.net/tdr-kotelnikov/"

  livecheck do
    url :homepage
    regex(%r{Latest\sversion:\s<strong>(\d+(?:\.\d+)+)</strong>}i)
  end

  pkg "TDR Kotelnikov.pkg"

  uninstall pkgutil: [
    "com.TokyoDawnLabs.TDRKotelnikov.VST",
    "com.TokyoDawnLabs.TDRKotelnikov.VST3",
    "com.TokyoDawnLabs.TDRKotelnikov.AU",
    "com.TokyoDawnLabs.TDRKotelnikov.AAX",
  ]
end

cask "tdr-kotelnikov" do
  version "1.6.4"
  sha256 "eec5ad8d12ed25bb6501ed5058fa309ddb61d8c8ebf1a1b28c621b4f8b1ba2ee"

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

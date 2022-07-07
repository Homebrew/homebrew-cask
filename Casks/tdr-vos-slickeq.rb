cask "tdr-vos-slickeq" do
  version "1.3.7"
  sha256 "c663b854bfaa322d62c74ed287dfba845dd82a20b95fcaa64ed0771e123a0ab2"

  url "https://www.tokyodawn.net/labs/SlickEQ/#{version}/TDR%20VOS%20SlickEQ.zip?x24775"
  name "tdr-vos-slickeq"
  desc "Mixing equalizer designed for musical flexibility and impeccable sound"
  homepage "https://www.tokyodawn.net/tdr-vos-slickeq/"

  livecheck do
    url :homepage
    regex(%r{Latest\sversion:\s<strong>(\d+(?:\.\d+)+)</strong>}i)
  end

  pkg "TDR VOS SlickEQ.pkg"

  uninstall pkgutil: [
    "com.TokyoDawnLabs.TDRVOSSlickEQ.VST3",
    "com.TokyoDawnLabs.TDRVOSSlickEQ.VST",
    "com.TokyoDawnLabs.TDRVOSSlickEQ.AAX",
    "com.TokyoDawnLabs.TDRVOSSlickEQ.AU",
  ]
end

cask "vcv-rack" do
  version "2.0.6"
  sha256 "e03387c286334987513894dd6a62f841c2df988755318603e0b5ed4e118dc259"

  url "https://vcvrack.com/downloads/RackFree-#{version}-mac.pkg"
  name "VCV Rack"
  desc "Open-source virtual modular synthesizer"
  homepage "https://vcvrack.com/"

  livecheck do
    url "https://raw.githubusercontent.com/VCVRack/Rack/v#{version.major}/CHANGELOG.md"
    regex(/###\s(\d+(?:\.\d+)+)/i)
  end

  pkg "RackFree-#{version}-mac.pkg"

  uninstall pkgutil: "com.vcvrack.rack"
end

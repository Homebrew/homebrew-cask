cask "vcv-rack" do
  version "2.1.0"
  sha256 "2d11607359360fde55465863534e0241519c5912a1639ff82a3722054c81f2d3"

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

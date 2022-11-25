cask "vcv-rack" do
  version "2.2.0"
  sha256 "f2db0877d165be94f495291950a122f09d213e51f393cd69626ef21f264f7db7"

  url "https://vcvrack.com/downloads/RackFree-#{version}-mac-x64.pkg"
  name "VCV Rack"
  desc "Open-source virtual modular synthesizer"
  homepage "https://vcvrack.com/"

  livecheck do
    url "https://raw.githubusercontent.com/VCVRack/Rack/v#{version.major}/CHANGELOG.md"
    regex(/###\s(\d+(?:\.\d+)+)/i)
  end

  pkg "RackFree-#{version}-mac-x64.pkg"

  uninstall pkgutil: "com.vcvrack.rack"
end

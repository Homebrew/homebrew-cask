cask "vcv-rack" do
  version "2.5.0"
  sha256 "afdb0271362fa14bda34a9a21a20ceb3ee8d3e555d684ba341cc3dfef10058b4"

  url "https://vcvrack.com/downloads/RackFree-#{version}-mac-x64.pkg"
  name "VCV Rack"
  desc "Open-source virtual modular synthesiser"
  homepage "https://vcvrack.com/"

  livecheck do
    url "https://raw.githubusercontent.com/VCVRack/Rack/v#{version.major}/CHANGELOG.md"
    regex(/###\s(\d+(?:\.\d+)+)/i)
  end

  pkg "RackFree-#{version}-mac-x64.pkg"

  uninstall pkgutil: "com.vcvrack.rack"
end

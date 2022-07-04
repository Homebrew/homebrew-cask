cask "vcv-rack" do
  version "2.1.2"
  sha256 "9be9208b9a9ba9aedc7a4ca7f47893f4cbd94178146a0308484559a218c71c27"

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

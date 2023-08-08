cask "vcv-rack" do
  version "2.4.0"
  sha256 "250701af9b61615381269cf2eff718acb23ad7e6aba0a3a8392131a87dfb6841"

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

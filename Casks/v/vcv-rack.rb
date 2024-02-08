cask "vcv-rack" do
  version "2.4.1"
  sha256 "385458c55cd4afbcf08fc9d20a06003ca814227e0ff8be8fa416c4fee4e1a3d8"

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

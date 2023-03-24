cask "vcv-rack" do
  version "2.3.0"
  sha256 "3ad9235c68447956407b39c83fff8ec2f1572f9e8a78a9f56ac8d807092f8552"

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

cask "vcv-rack" do
  version "2.0.3"
  sha256 "ba50e7617d8c23ed4583404206f6b5931f68a6e892329c3a92f816d21ee8d58e"

  url "https://vcvrack.com/downloads/RackFree-#{version}-mac.pkg"
  name "VCV Rack"
  desc "Open-source virtual modular synthesizer"
  homepage "https://vcvrack.com/"

  livecheck do
    url "https://vcvrack.com/Rack.html"
    regex(%r{href=.*?/RackFree[._-]v?(\d+(?:\.\d+)+)[._-]mac\.pkg}i)
  end

  pkg "RackFree-#{version}-mac.pkg"

  uninstall pkgutil: "com.vcvrack.rack"
end

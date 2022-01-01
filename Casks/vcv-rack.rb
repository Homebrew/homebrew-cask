cask "vcv-rack" do
  version "2.0.5"
  sha256 "1bc766e2f75322a3f16fb059f15b8548ed26a85325891a26924876ebbd85de9e"

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

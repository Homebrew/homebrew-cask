cask "vcv-rack" do
  version "2.0.4"
  sha256 "37c853416d546d30429868187fcc83eb7d9db11528cab6a9b9c4735158d26f52"

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

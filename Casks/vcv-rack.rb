cask "vcv-rack" do
  version "2.0.2"
  sha256 "f449713ad8c5f453487f0d706c76ee80e530559cbfa96a6f2b3f8ef77acf829c"

  url "https://vcvrack.com/downloads/RackFree-#{version}-mac.pkg"
  name "VCV Rack"
  desc "Open-source virtual modular synthesizer"
  homepage "https://vcvrack.com/"

  livecheck do
    url "https://vcvrack.com/Rack.html"
    regex(%r{href=.*?/RackFree[._-]v?(\d+(?:\.\d+)+)-mac\.pkg}i)
  end

  pkg "RackFree-#{version}-mac.pkg"

  uninstall pkgutil: ["com.vcvrack.rack"]
end

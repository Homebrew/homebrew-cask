cask "vcv-rack" do
  version "2.6.0"
  sha256 "8efe37947428e08dafc618674e97f0514ef73dcad8608584660b7899b5b91b55"

  url "https://vcvrack.com/downloads/RackFree-#{version}-mac-x64+arm64.pkg"
  name "VCV Rack"
  desc "Open-source virtual modular synthesiser"
  homepage "https://vcvrack.com/"

  livecheck do
    url "https://raw.githubusercontent.com/VCVRack/Rack/v#{version.major}/CHANGELOG.md"
    regex(/###\s(\d+(?:\.\d+)+)/i)
  end

  pkg "RackFree-#{version}-mac-x64+arm64.pkg"

  uninstall pkgutil: "com.vcvrack.rack"

  zap trash: [
    "~/Documents/Rack2/*.json",
    "~/Documents/Rack2/autosave",
    "~/Documents/Rack2/log.txt",
    "~/Documents/Rack2/plugins-mac-arm64",
    "~/Documents/Rack2/plugins-mac-x64",
    "~/Library/Application Support/Rack2/*.json",
    "~/Library/Application Support/Rack2/autosave",
    "~/Library/Application Support/Rack2/log.txt",
    "~/Library/Application Support/Rack2/plugins-mac-arm64",
    "~/Library/Application Support/Rack2/plugins-mac-x64",
  ]
end

cask "vcv-rack" do
  version "2.6.3"
  sha256 "211fd84eab60e190c82dc0aa1509ef86cad5dd392afd17d6c5b866fc8f12ff3b"

  url "https://vcvrack.com/downloads/RackFree-#{version}-mac-x64+arm64.pkg"
  name "VCV Rack"
  desc "Open-source virtual modular synthesiser"
  homepage "https://vcvrack.com/"

  livecheck do
    url "https://raw.githubusercontent.com/VCVRack/Rack/v#{version.major}/CHANGELOG.md"
    regex(/###\s(\d+(?:\.\d+)+)/i)
  end

  pkg "RackFree-#{version}-mac-x64+arm64.pkg"

  uninstall pkgutil: "com.vcvrack.rack*"

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

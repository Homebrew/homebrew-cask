cask "vcv-rack" do
  arch arm: "arm64", intel: "x64"

  version "2.5.1"
  sha256  arm:   "8b1515ca580a0ab69e7e9e16e82b5cf0f7cef4e107d7263d67d4e889604d8857",
          intel: "37ce22538553367953d43659d3246c9707f4c64876809a7828b66cc5900eab7d"

  url "https://vcvrack.com/downloads/RackFree-#{version}-mac-#{arch}.pkg"
  name "VCV Rack"
  desc "Open-source virtual modular synthesiser"
  homepage "https://vcvrack.com/"

  livecheck do
    url "https://raw.githubusercontent.com/VCVRack/Rack/v#{version.major}/CHANGELOG.md"
    regex(/###\s(\d+(?:\.\d+)+)/i)
  end

  pkg "RackFree-#{version}-mac-#{arch}.pkg"

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

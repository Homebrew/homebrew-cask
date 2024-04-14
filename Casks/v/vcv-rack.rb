cask "vcv-rack" do
  arch arm: "arm64", intel: "x64"

  version "2.5.0"
  sha256  arm:   "7ae70918e85967f1468252209e52341d8c538c43ad7a2e2b84b3099aeb27039b",
          intel: "afdb0271362fa14bda34a9a21a20ceb3ee8d3e555d684ba341cc3dfef10058b4"

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

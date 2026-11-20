cask "vrampro" do
  version "2.3.0"
  sha256 "69092840478379c6d0035b204067040046bda7ae40ffce8014914c0ea3a709b9"

  url "https://vrampro.com/updates/VRAMPro-#{version}.zip"
  name "VRAM Pro"
  desc "Control VRAM allocation of unified memory"
  homepage "https://vrampro.com/"

  livecheck do
    url "https://vrampro.com/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "VRAMPro.app"

  zap trash: [
    "~/Library/Application Support/VRAMPro",
    "~/Library/Caches/com.stepcap.VRAMPro",
    "~/Library/HTTPStorages/com.stepcap.VRAMPro",
    "~/Library/HTTPStorages/com.stepcap.VRAMPro.binarycookies",
    "~/Library/Preferences/com.stepcap.VRAMPro.plist",
    "~/Library/WebKit/com.stepcap.VRAMPro",
  ]
end

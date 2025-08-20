cask "vrampro" do
  version "2.1.4"
  sha256 "2edaf0c8f1053a6c7cde80dbaad9d9d62d29951291754f1d82ebf95bd8029c95"

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
  depends_on macos: ">= :sequoia"

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

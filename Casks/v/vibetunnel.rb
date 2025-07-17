cask "vibetunnel" do
  version "1.0.0-beta.11"
  sha256 "1f2b0a1a798c68da151757f065a22adb7e88234783d407571133da138e6725a5"

  url "https://github.com/amantus-ai/vibetunnel/releases/download/v#{version}/VibeTunnel-#{version}.dmg",
      verified: "github.com/amantus-ai/vibetunnel/"
  name "VibeTunnel"
  desc "Turn any browser into your terminal"
  homepage "https://vibetunnel.sh/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)*(?:-beta\.\d+)?)$/i)
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "VibeTunnel.app"
  binary "#{appdir}/VibeTunnel.app/Contents/Resources/vt"

  zap trash: [
    "~/Library/Application Support/VibeTunnel",
    "~/Library/Caches/com.amantus.vibetunnel",
    "~/Library/Preferences/com.amantus.vibetunnel.plist",
    "~/Library/Saved Application State/com.amantus.vibetunnel.savedState",
  ]
end

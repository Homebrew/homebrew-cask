cask "vibetunnel" do
  version "1.0.0-beta.6"
  sha256 "3dcaf4c8c8d120c92609b82aa2bfb03bbb0fb382db2047001cb3404db078e273"

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

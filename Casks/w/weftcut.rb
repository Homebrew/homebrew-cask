cask "weftcut" do
  version "0.9.0"
  sha256 "c73a69e78d38d9c535209fd8ed9b8ee10b3dccee19e775760c959667c96bb21b"

  url "https://github.com/WeftCut/WeftCut/releases/download/v#{version}/WeftCut-mac-arm64.dmg"
  name "WeftCut"
  desc "Video editor controlled from MCP clients"
  homepage "https://weftcut.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "WeftCut.app"
  binary "#{appdir}/WeftCut.app/Contents/Resources/cli/weftcut"

  zap trash: [
    "~/Library/Application Support/WeftCut",
    "~/Library/Caches/dev.weftcut.desktop",
    "~/Library/Caches/dev.weftcut.desktop.ShipIt",
    "~/Library/HTTPStorages/dev.weftcut.desktop",
    "~/Library/Preferences/dev.weftcut.desktop.plist",
    "~/Library/Saved Application State/dev.weftcut.desktop.savedState",
  ]
end

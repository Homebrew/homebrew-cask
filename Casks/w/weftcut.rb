cask "weftcut" do
  version "0.8.1"
  sha256 "b49ecf11b802951991dedc27f0b3719078560597c84b8d5ced07d81d69e43cbd"

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

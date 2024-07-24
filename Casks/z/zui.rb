cask "zui" do
  arch arm: "arm64", intel: "x64"

  version "1.17.0"
  sha256 arm:   "9b2fee43edef6983a118bea15310cdfe8a4c9f6865ae60f0a30164752bb9d0b8",
         intel: "5ca17333e94d37af7718057953a7c658ce7ec6ad599611193e45d8f38f7aa0e4"

  url "https://github.com/brimdata/zui/releases/download/v#{version}/Zui-#{version}-#{arch}.dmg",
      verified: "github.com/brimdata/zui/"
  name "Zui"
  desc "Graphical user interface for exploring data in Zed lakes"
  homepage "https://zui.brimdata.io/docs"

  depends_on macos: ">= :catalina"

  app "Zui.app"

  zap trash: [
    "~/Library/Application Support/Zui",
    "~/Library/Preferences/io.brimdata.zui.plist",
    "~/Library/Saved Application State/io.brimdata.zui.savedState",
  ]
end

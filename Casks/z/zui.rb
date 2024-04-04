cask "zui" do
  version "1.7.0"
  sha256 "db2d15bf021619b48ccd8d8e76c7efb6f1ef505d322744c384c97c492a28e401"

  url "https://github.com/brimdata/zui/releases/download/v#{version}/Zui-#{version}.dmg",
      verified: "github.com/brimdata/zui/"
  name "Zui"
  desc "Graphical user interface for exploring data in Zed lakes"
  homepage "https://zui.brimdata.io/docs"

  depends_on macos: ">= :high_sierra"

  app "Zui.app"

  zap trash: [
    "~/Library/Application Support/Zui",
    "~/Library/Preferences/io.brimdata.zui.plist",
    "~/Library/Saved Application State/io.brimdata.zui.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

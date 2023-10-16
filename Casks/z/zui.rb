cask "zui" do
  version "1.3.1"
  sha256 "cf3e536476e3f13f8a210499d6544c371f7bdd8a3e87fd6dc022c6b9084c1932"

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

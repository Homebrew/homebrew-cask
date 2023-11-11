cask "zui" do
  version "1.4.0"
  sha256 "88c54b0228fd57c97275b8795743b29549bf57e64731b0af8ac9a20067549a18"

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

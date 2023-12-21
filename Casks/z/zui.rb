cask "zui" do
  version "1.5.0"
  sha256 "36fa75d42472951a120a2b43af32bf91fbbabc9dc7200098182d0450c266354c"

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

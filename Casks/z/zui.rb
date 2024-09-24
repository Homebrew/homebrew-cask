cask "zui" do
  arch arm: "arm64", intel: "x64"

  version "1.18.0"
  sha256 arm:   "d28bd3144781cf1d8b6d2ba654e4c65b826c945004d480f2c0497235dfda4390",
         intel: "463e57018e87d201dd240e7199dc68d252eda2ab61ccae575efd7957dd7fc364"

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

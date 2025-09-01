cask "vimr" do
  version "0.57.0,20250901.212156"
  sha256 "64c31ca93302d3d8450697c46100fcb9a67b06f435669c713e566aa8441af5da"

  url "https://github.com/qvacua/vimr/releases/download/v#{version.csv.first}-#{version.csv.second}/VimR-v#{version.csv.first}.tar.bz2"
  name "VimR"
  desc "GUI for the Neovim text editor"
  homepage "https://github.com/qvacua/vimr"

  livecheck do
    url "https://raw.githubusercontent.com/qvacua/vimr/refs/heads/master/appcast.xml"
    strategy :sparkle do |item|
      item.nice_version.delete_prefix("v")
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "VimR.app"
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"

  zap trash: [
    "~/Library/Caches/com.qvacua.VimR",
    "~/Library/Preferences/com.qvacua.VimR.menuitems.plist",
    "~/Library/Preferences/com.qvacua.VimR.plist",
    "~/Library/Saved Application State/com.qvacua.VimR.savedState",
    "~/Library/WebKit/com.qvacua.VimR",
  ]
end

cask "vimr" do
  version "0.59.2,20251201.200738"
  sha256 "1cb3422ffb6b161109b1d15070158e2a7b6978a5314e698f226cff42b951b7bb"

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
  depends_on macos: ">= :sonoma"

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

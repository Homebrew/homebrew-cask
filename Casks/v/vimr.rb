cask "vimr" do
  version "0.59.1,20251127.190300"
  sha256 "05669f80dc762819f2828652e6dc574d3a03b375fd7b6e9a0b6b2e9ba2a247b6"

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

cask "vimr" do
  version "0.35.0-20211105.213803"
  sha256 "bb0ea1ba949bee1c4a41bb459f7cbe48651a092878be4874f12a6d5200b18a7d"

  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2",
      verified: "github.com/qvacua/vimr/"
  name "VimR"
  desc "GUI for the Neovim text editor"
  homepage "http://vimr.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "VimR.app"
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"

  zap trash: [
    "~/Library/Caches/com.qvacua.VimR",
    "~/Library/Preferences/com.qvacua.VimR.plist",
    "~/Library/Preferences/com.qvacua.VimR.menuitems.plist",
    "~/Library/Saved Application State/com.qvacua.VimR.savedState",
    "~/Library/WebKit/com.qvacua.VimR",
  ]
end

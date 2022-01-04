cask "vimr" do
  version "0.36.0,20220102.161018"
  sha256 "b1361cd3b811b04702f924cdd1bca571778c56180b44c18d5a12b5e6d21a207f"

  url "https://github.com/qvacua/vimr/releases/download/v#{version.before_comma}-#{version.after_comma}/VimR-v#{version.before_comma}.tar.bz2",
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

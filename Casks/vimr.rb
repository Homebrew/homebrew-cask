cask "vimr" do
  version "0.44.0,20230103.174333"
  sha256 "891783f6889ed66b745480cdcc9b18055b7f6d430d1228a887f68ed7ed1ff3ac"

  url "https://github.com/qvacua/vimr/releases/download/v#{version.csv.first}-#{version.csv.second}/VimR-v#{version.csv.first}.tar.bz2",
      verified: "github.com/qvacua/vimr/"
  name "VimR"
  desc "GUI for the Neovim text editor"
  homepage "http://vimr.org/"

  livecheck do
    url "https://github.com/qvacua/vimr/releases/latest"
    strategy :page_match do |page|
      match = page.match(/v?(\d+(?:\.\d+)+)[._-](\d+(?:\.\d+)+)/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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

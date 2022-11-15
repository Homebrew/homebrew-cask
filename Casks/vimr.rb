cask "vimr" do
  version "0.43.0,20221115.195322"
  sha256 "62d1787139cb499c8041df7a80eed6b022ba7645521250558577aade08c2f4ca"

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

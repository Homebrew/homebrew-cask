cask "vimr" do
  version "0.47.1,20240528.171603"
  sha256 "f3c50785301a583a7049a70b18fead7c6edfb70e89ed6e61c0bdb953a962140d"

  url "https://github.com/qvacua/vimr/releases/download/v#{version.csv.first}-#{version.csv.second}/VimR-v#{version.csv.first}.tar.bz2",
      verified: "github.com/qvacua/vimr/"
  name "VimR"
  desc "GUI for the Neovim text editor"
  homepage "http://vimr.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)[._-](\d+(?:\.\d+)+)$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
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

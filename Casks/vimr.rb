cask "vimr" do
  version "0.34.0-355"
  sha256 "e4e5db59146993fa01ad9999ff0cab9effe209c6827cf6eabe4a54a92d9f987c"

  url "https://github.com/qvacua/vimr/releases/download/v#{version}/VimR-v#{version}.tar.bz2",
      verified: "github.com/qvacua/vimr/"
  name "VimR"
  desc "GUI for the Neovim text editor"
  homepage "http://vimr.org/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/VimR-v?(\d+(?:\.\d+)*-\d+)\.t}i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "VimR.app"
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"

  zap trash: [
    "~/Library/Caches/com.qvacua.VimR",
    "~/Library/Preferences/com.qvacua.VimR.plist",
    "~/Library/Saved Application State/com.qvacua.VimR.savedState",
    "~/Library/WebKit/com.qvacua.VimR",
  ]
end

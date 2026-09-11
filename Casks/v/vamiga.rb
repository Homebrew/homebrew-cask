cask "vamiga" do
  version "4.5"
  sha256 "8e4d98ee27cc1b10a478389c3f56da05ed60082114c3a249d8907b63a45e1bdb"

  url "https://github.com/dirkwhoffmann/vAmiga/releases/download/v#{version}/vAmiga.app.zip"
  name "vAmiga"
  desc "Amiga 500, 1000, 2000 emulator"
  homepage "https://dirkwhoffmann.github.io/vAmiga"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "vAmiga.app"

  zap trash: [
    "~/Library/Application Support/vAmiga",
    "~/Library/Preferences/dirkwhoffmann.vAmiga.plist",
  ]
end

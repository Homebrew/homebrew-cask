cask "vamiga" do
  version "5.0"
  sha256 "a35b843c09eade9e77fa1a6159fdbe880c250762db70bb0b22bca3512c49233b"

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

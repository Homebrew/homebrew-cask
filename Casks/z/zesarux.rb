cask "zesarux" do
  version "12.0"
  sha256 "1abbb5e53f8557d07d1cc94b904eb07dcb79e064b7dff5c2253569f7c2f4a80c"

  url "https://github.com/chernandezba/zesarux/releases/download/ZEsarUX-#{version}/ZEsarUX_macos-#{version}.dmg"
  name "ZEsarUX"
  desc "ZX machines emulator"
  homepage "https://github.com/chernandezba/zesarux"

  livecheck do
    url :url
    regex(/ZEsarUX[._-]v?([\dX]+(?:\.\d+)*)/i)
    strategy :github_latest
  end

  app "ZEsarUX.app"

  zap trash: [
    "~/.zesaruxrc",
    "~/Library/Saved Application State/com.cesarhernandez.zesarux.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

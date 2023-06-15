cask "zesarux" do
  version "10.3"
  sha256 "a0ef122b3c1fa3b0ce4337fa34a15e4b278aaf5f191491da6563907b217158cb"

  url "https://github.com/chernandezba/zesarux/releases/download/ZEsarUX-#{version}/ZEsarUX_macos-#{version}.dmg"
  name "ZEsarUX"
  desc "ZX machines emulator"
  homepage "https://github.com/chernandezba/zesarux"

  livecheck do
    url :url
    regex(/ZEsarUX-(\d+(?:\.\d+)+)/i)
    strategy :github_latest
  end

  app "ZEsarUX.app"

  zap trash: [
    "~/.zesaruxrc",
    "~/Library/Saved Application State/com.cesarhernandez.zesarux.savedState",
  ]
end

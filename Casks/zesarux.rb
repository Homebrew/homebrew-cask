cask "zesarux" do
  version "10.2"
  sha256 "caf8d7b124ef75ba0217c396a08560f60682f2b019157546c900887a7987101e"

  url "https://github.com/chernandezba/zesarux/releases/download/ZEsarUX-#{version}/ZEsarUX_macos-#{version}.dmg"
  name "ZEsarUX"
  desc "ZX machines emulator"
  homepage "https://github.com/chernandezba/zesarux"

  livecheck do
    url :url
    regex(%r{href=["']?[^"' >]*?/tag/ZEsarUX-(\d+(?:\.\d+)+)["' >]}i)
    strategy :github_latest
  end

  app "ZEsarUX.app"
end

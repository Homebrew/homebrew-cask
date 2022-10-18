cask "zesarux" do
  version "10.1"
  sha256 "f315abdd014219793ecde1f8aa2268e2d76126db3ea00b46a913ca1717250b68"

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

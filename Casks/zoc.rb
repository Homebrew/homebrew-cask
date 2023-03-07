cask "zoc" do
  version "8.05.1"
  sha256 "5b9d0a781e1142cd867a399d9e349ef5a4c6cd57cea7098454b4ff1bf8d4f44a"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  livecheck do
    url "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
    regex(/\*\s*VERSION\s*(\d+(?:\.\d+)+)/i)
  end

  app "zoc#{version.major}.app"
end

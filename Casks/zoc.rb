cask "zoc" do
  version "8.02.1"
  sha256 "33a45c1f2ebdbe90ed66f7caed890b4de6acf202f62bb94c9e3aa7c5fcdcc96b"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  app "zoc#{version.major}.app"
end

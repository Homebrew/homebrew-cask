cask "zoc" do
  version "8.02.2"
  sha256 "b224e55a047354a6c0119a8668894682e25d4da426719ea5e1c7f9120b9bd341"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  app "zoc#{version.major}.app"
end

cask "zoc" do
  version "8.01.0"
  sha256 "bffdb083da687a5add053e0ada7de6d684af17ec14fd0426d0c20af02b684e04"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  app "zoc#{version.major}.app"
end

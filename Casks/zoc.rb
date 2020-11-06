cask "zoc" do
  version "8.01.1"
  sha256 "84b87f386f8054e61935fcdf15651e40d99a74a972189381b7b451caa561890a"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  app "zoc#{version.major}.app"
end

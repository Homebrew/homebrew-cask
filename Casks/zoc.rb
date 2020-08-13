cask "zoc" do
  version "7.26.1"
  sha256 "dfa0b6022cc87ba301c06613fa32dba2583abd62926691f9ffa46f8cb2c08d8c"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
  name "ZOC"
  homepage "https://www.emtec.com/zoc/"

  app "zoc#{version.major}.app"
end

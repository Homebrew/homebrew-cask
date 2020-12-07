cask "zoc" do
  version "8.01.5"
  sha256 "a8a7e8237705ccd5e0dd96f80be8f692a2ab62142a4903d6400119872a390070"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  app "zoc#{version.major}.app"
end

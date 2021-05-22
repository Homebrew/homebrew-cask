cask "zoc" do
  version "8.02.4"
  sha256 "2bacd31bc9548ece16a973b7dd2d5251853c50d6de2a1295d033e489617790c2"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  app "zoc#{version.major}.app"
end

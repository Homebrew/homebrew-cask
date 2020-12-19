cask "zoc" do
  version "8.01.6"
  sha256 "466dd19476bf454f15aa02703153c8cba0310624fd25d83239af21be11bbf0e4"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  app "zoc#{version.major}.app"
end

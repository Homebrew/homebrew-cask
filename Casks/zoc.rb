cask "zoc" do
  version "8.01.3"
  sha256 "3a565f9535d09a38d8d012d58e5d7bd448017b412eb489737fc0db543f9d580e"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  app "zoc#{version.major}.app"
end

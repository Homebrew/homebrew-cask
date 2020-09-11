cask "zoc" do
  version "7.26.2"
  sha256 "e76d6213e7e2fd66ccb62ecaad19059a8746ee16db0f2c5cf273f81a69359004"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  app "zoc#{version.major}.app"
end

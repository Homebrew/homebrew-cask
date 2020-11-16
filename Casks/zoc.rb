cask "zoc" do
  version "8.01.2"
  sha256 "a70a837f1815e1073e2278a946e2d564826fc9ae9798c33cc47d6ef8c0238044"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  app "zoc#{version.major}.app"
end

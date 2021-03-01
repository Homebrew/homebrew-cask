cask "zoc" do
  version "8.02.0"
  sha256 "92a7302c3481bda30472d59a67e1062e254846ae0b6dd742dfd490696c495fb1"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  app "zoc#{version.major}.app"
end

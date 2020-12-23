cask "zoc" do
  version "8.01.7"
  sha256 "9ee3a5ff706c92ba660bc0449b918d511e77118f458203d94d8ae157eab4f01e"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  app "zoc#{version.major}.app"
end

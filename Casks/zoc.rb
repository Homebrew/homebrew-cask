cask "zoc" do
  version "8.01.8"
  sha256 "c7122823ef0f70871d35f3e2fecafc840ee552f411c84721890b58acc70cbacc"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  app "zoc#{version.major}.app"
end

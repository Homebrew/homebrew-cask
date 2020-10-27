cask "zoc" do
  version "8.01.0"
  sha256 "0d3d24b32d94cf2aaa228cbc68e535dd638c9546c07e108ddf5bdedec4255c8f"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  app "zoc#{version.major}.app"
end

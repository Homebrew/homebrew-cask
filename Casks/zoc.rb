cask "zoc" do
  version "7.26.4"
  sha256 "fe01bc7b675b92cb3d49f8d6c7bce98abc4b046e26b6d76bc5c6bfd72a7f4b5a"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  app "zoc#{version.major}.app"
end

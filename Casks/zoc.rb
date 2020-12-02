cask "zoc" do
  version "8.01.4"
  sha256 "91bd30f56bab7626a023b879480aafec5f5d4237408cf21d0fc3b154c78ed26d"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  app "zoc#{version.major}.app"
end

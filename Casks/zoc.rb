cask "zoc" do
  version "7.26.3"
  sha256 "6748d05ec0ba5eca6f3976f0edc13be6b74056eff4d032a45b3a837c6f36ae48"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  app "zoc#{version.major}.app"
end

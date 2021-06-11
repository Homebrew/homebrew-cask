cask "zoc" do
  version "8.02.5"
  sha256 "a456adb427a6ae04cf523bc23f7300fc2ccbbf5610e0fef52678a6b664e6b9e3"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  app "zoc#{version.major}.app"
end

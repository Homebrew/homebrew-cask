cask "zoc" do
  version "8.04.4"
  sha256 "ee8d71c133a03ebf6233b3aac0e0fe6e8b2c93b2a59050ddc6b8a4b02f2f563c"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  livecheck do
    url "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
    regex(/\*\s*VERSION\s*(\d+(?:\.\d+)+)/i)
  end

  app "zoc#{version.major}.app"
end

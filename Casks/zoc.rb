cask "zoc" do
  version "8.02.3"
  sha256 "b2118d63b65178ee8b93e0086c3fe5ff1759aa8c38636a38b3623074aa320c55"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  livecheck do
    url "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
    strategy :page_match
    regex(%r{href=.*?/zoc(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "zoc#{version.major}.app"
end

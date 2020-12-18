cask "tinderbox" do
  version "8.9.1"
  sha256 "53f416de9f08034c6c20069ae8363b8bc5f228d9c63b462f8c82fb35609f2696"

  url "https://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  appcast "https://eastgate.com/Tinderbox/download.html"
  name "Tinderbox"
  homepage "https://eastgate.com/Tinderbox/"

  app "Tinderbox #{version.major}.app"
end

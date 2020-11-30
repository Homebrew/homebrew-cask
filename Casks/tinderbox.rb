cask "tinderbox" do
  version "8.9.0"
  sha256 "1078aa2ccd9247ced13ad26a9c44b12e308c69c497741b447e080aaa12ffd738"

  url "https://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  appcast "https://eastgate.com/Tinderbox/download.html"
  name "Tinderbox"
  homepage "https://eastgate.com/Tinderbox/"

  app "Tinderbox #{version.major}.app"
end

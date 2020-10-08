cask "tinderbox" do
  version "8.8.0"
  sha256 "38ef62a50726ab6bae716c53b07c30a6c445857a7bcf51ded88da60f4c586fe1"

  url "https://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  appcast "https://eastgate.com/Tinderbox/download.html"
  name "Tinderbox"
  homepage "https://eastgate.com/Tinderbox/"

  app "Tinderbox #{version.major}.app"
end

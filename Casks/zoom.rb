cask "zoom" do
  version "1.1.5"
  sha256 "ab9584758d922f3fa2c607ae6bf58841969fdd5740ff17af76f41ecfd7c6ae11"

  url "https://www.logicalshift.co.uk/mac/Zoom-#{version}.dmg"
  appcast "https://www.logicalshift.co.uk/unix/zoom/older.html"
  name "Zoom"
  homepage "https://www.logicalshift.co.uk/unix/zoom/"

  app "Zoom.app"
end

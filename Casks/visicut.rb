cask "visicut" do
  version "1.9-80-g65b7f094"
  sha256 "26247e3e785a491b64ab186e48ba9f8734c2a5c2d847068dcd78d826e48420e8"

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast "https://download.visicut.org"
  name "VisiCut"
  homepage "https://visicut.org/"

  app "VisiCut.app"
end

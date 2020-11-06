cask "visicut" do
  version "1.9-83-g2dc5fd7f"
  sha256 "a0d5cb13f9e4133b8721ce94603fb0ea6b9eeb7943fab79ab2f82cae6df4982a"

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast "https://download.visicut.org"
  name "VisiCut"
  desc "Prepare, save and send jobs to Lasercutters"
  homepage "https://visicut.org/"

  app "VisiCut.app"

  caveats do
    depends_on_java "11+"
  end
end

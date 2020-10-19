cask "visicut" do
  version "1.9.83-2dc5fd7f"
  sha256 "07b01fd9afb3a4f82c5c9fecae6fd9dc88aa75007415bc4d5a8d0c738285d9de"

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast "https://download.visicut.org"
  name "VisiCut"
  homepage "https://visicut.org/"

  app "VisiCut.app"
end

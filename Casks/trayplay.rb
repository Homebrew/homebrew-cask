cask "trayplay" do
  version "1.0.3"
  sha256 "00da4099a040fa50e9f73f13ab217309e8c9a3683834164a401f638db0246331"

  url "https://mborgerson.com/files/trayplay/TrayPlay-#{version}.dmg"
  appcast "https://mborgerson.com/files/trayplay/appcast.xml"
  name "TrayPlay"
  homepage "https://mborgerson.com/trayplay"

  app "TrayPlay.app"
end

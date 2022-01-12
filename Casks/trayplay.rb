cask "trayplay" do
  version "1.0.3,48"
  sha256 "00da4099a040fa50e9f73f13ab217309e8c9a3683834164a401f638db0246331"

  url "https://mborgerson.com/files/trayplay/TrayPlay-#{version.csv.first}.dmg"
  name "TrayPlay"
  homepage "https://mborgerson.com/trayplay"

  livecheck do
    url "https://mborgerson.com/files/trayplay/appcast.xml"
    strategy :sparkle
  end

  app "TrayPlay.app"
end

cask 'trayplay' do
  version '1.0.3'
  sha256 '00da4099a040fa50e9f73f13ab217309e8c9a3683834164a401f638db0246331'

  url "https://mborgerson.com/files/trayplay/TrayPlay-#{version}.dmg"
  appcast 'https://mborgerson.com/files/trayplay/appcast.xml',
          checkpoint: '0a9f111bef597bfa7f800a1f7d016049d9f59bb207d0e0d1c04e34d35d18dd66'
  name 'TrayPlay'
  homepage 'https://mborgerson.com/trayplay'

  app 'TrayPlay.app'
end

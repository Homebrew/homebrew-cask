cask 'virtualhere-server' do
  version '3.2.8'
  sha256 '829060fc7b82cc03ff76e6313dad4e1158c4ed2904896c4dcd20965493462c3d'

  url 'https://www.virtualhere.com/sites/default/files/usbserver/VirtualHereServer.dmg'
  name 'VirtualHereServer'
  homepage 'https://www.virtualhere.com/osx_server_software'

  app 'VirtualHereServer.app'
end

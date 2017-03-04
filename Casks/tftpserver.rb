cask 'tftpserver' do
  version :latest
  sha256 :no_check

  url 'http://ww2.unime.it/flr/tftpserver/TftpServer.dmg'
  name 'TFTP Server'
  homepage 'http://ww2.unime.it/flr/tftpserver/'

  app 'TftpServer.app'
end

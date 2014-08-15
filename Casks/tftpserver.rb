class Tftpserver < Cask
  version 'latest'
  sha256 :no_check

  url 'http://ww2.unime.it/flr/tftpserver/TftpServer.dmg'
  homepage 'http://ww2.unime.it/flr/tftpserver/'

  link 'TftpServer.app'
end

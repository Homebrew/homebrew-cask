cask :v1 => 'tftpserver' do
  version :latest
  sha256 :no_check

  url 'http://ww2.unime.it/flr/tftpserver/TftpServer.dmg'
  name 'TFTP Server'
  homepage 'http://ww2.unime.it/flr/tftpserver/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TftpServer.app'
end

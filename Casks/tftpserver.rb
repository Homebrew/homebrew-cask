cask :v1 => 'tftpserver' do
  version :latest
  sha256 :no_check

  url 'http://ww2.unime.it/flr/tftpserver/TftpServer.dmg'
  homepage 'http://ww2.unime.it/flr/tftpserver/'
  license :unknown    # todo: improve this machine-generated value

  app 'TftpServer.app'
end

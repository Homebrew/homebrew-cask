cask :v1 => 'yummy-ftp' do
  version :latest
  sha256 :no_check

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  homepage 'http://www.yummysoftware.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Yummy FTP.app'
end

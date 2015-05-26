cask :v1 => 'yummy-ftp' do
  version :latest
  sha256 :no_check

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  name 'Yummy FTP'
  homepage 'http://www.yummysoftware.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  tags :vendor => 'Yummy Software'

  app 'Yummy FTP.app'
end

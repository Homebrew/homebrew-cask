cask :v1 => 'yummy-ftp' do
  version :latest
  sha256 :no_check

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  name 'Yummy FTP'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          :sha256 => 'fac71ab836dffdc1ae5b0b4acb03d63d2d93fb2639dd38d57b32d691a08d1ea7'
  homepage 'http://www.yummysoftware.com'
  license :commercial
  tags :vendor => 'Yummy Software'

  app 'Yummy FTP.app'
end

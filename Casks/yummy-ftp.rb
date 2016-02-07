cask 'yummy-ftp' do
  version '1.11.2'
  sha256 'de92fbbd842fba82e5ffda5797413573fd4772c33d52f9fb94252f665bea9148'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          checkpoint: 'd1272c0b251a40cd507ea42c1172ea1a2d055ee1af8dad2a04ebfa35824133d1'
  name 'Yummy FTP'
  homepage 'http://www.yummysoftware.com'
  license :commercial

  app 'Yummy FTP.app'
end

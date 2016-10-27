cask 'yummy-ftp' do
  version '1.11.11'
  sha256 'f35cf0b30d527a1bb117f72bad29f912a4bd26c779bc1285dd64ed254af14b60'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          checkpoint: '27b108f2c1ba09db26e1dc121810772b0b1629e2177c6695fc1f85980b198962'
  name 'Yummy FTP'
  homepage 'http://www.yummysoftware.com'

  app 'Yummy FTP.app'
end

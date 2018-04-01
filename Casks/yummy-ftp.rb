cask 'yummy-ftp' do
  version '1.11.14'
  sha256 'ae681a51e3e004421a558044f3f1f18a39fa6c7d45abb3164c7a404daa2ab680'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          checkpoint: '99e4f84bbe7f950279f1b3a9f1210f66666fa5f12d47e764c89ac1588526e2fc'
  name 'Yummy FTP'
  homepage 'https://www.yummysoftware.com/'

  app 'Yummy FTP.app'
end

cask 'yummy-ftp' do
  version '1.11.13'
  sha256 '89dccde3f4aa6679d5aeeaacaa0f9359799769aacebd3e574bcf7cafb55a95d5'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          checkpoint: '10ad0b2cf4058e7f5d041c6e20a843ee92549257f1db22c214e2ce3b7724eedb'
  name 'Yummy FTP'
  homepage 'http://www.yummysoftware.com/'

  app 'Yummy FTP.app'
end

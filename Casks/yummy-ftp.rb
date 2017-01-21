cask 'yummy-ftp' do
  version '1.11.14'
  sha256 '8bc510e16311e8fd3318d1f403eb76d3f0c743355a1dbd898479087e200d0759'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          checkpoint: 'ab502895561dbeb33bcf690f4b713c655e7efc56dfe7cc2aa53c71d05f1a2f56'
  name 'Yummy FTP'
  homepage 'http://www.yummysoftware.com/'

  app 'Yummy FTP.app'
end

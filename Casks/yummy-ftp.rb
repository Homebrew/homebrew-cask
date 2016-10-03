cask 'yummy-ftp' do
  version '1.11.10'
  sha256 'ffaabb9f17a811ce8f59bb74a4dd29adf53eac94461072ac8fbad5a400e3c1dd'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          checkpoint: '3554480d47572013e1bd8bcb4a48a30694360869f8cb0873adfa8eea2c2ba4c1'
  name 'Yummy FTP'
  homepage 'http://www.yummysoftware.com'
  license :commercial

  app 'Yummy FTP.app'
end

cask 'yummy-ftp' do
  version '1.11.4'
  sha256 'da4a7ec535169736601c5efb54b14f8de628f9aab204e9842b50b6eb17858c72'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          checkpoint: '27fd9479d65e051cbc9ae01c0bd952df11a31710ef561839c68bebae841f1b76'
  name 'Yummy FTP'
  homepage 'http://www.yummysoftware.com'
  license :commercial

  app 'Yummy FTP.app'
end

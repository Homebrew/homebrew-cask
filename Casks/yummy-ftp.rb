cask 'yummy-ftp' do
  version '1.11.10b5'
  sha256 '70f721e1ef51d1f04ba546999bb408bdf21ad6629c7cc244be8b4a6e8196e72e'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          checkpoint: '9293514587965d3fbe0d84b6eae0f5ddef9b2447286caab1d9ce8623f4e4fb15'
  name 'Yummy FTP'
  homepage 'http://www.yummysoftware.com'
  license :commercial

  app 'Yummy FTP.app'
end

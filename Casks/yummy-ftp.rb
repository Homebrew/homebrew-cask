cask 'yummy-ftp' do
  version '1.11.9'
  sha256 '70f721e1ef51d1f04ba546999bb408bdf21ad6629c7cc244be8b4a6e8196e72e'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          checkpoint: '5482dca1c4307092a8323659a1e2ae6fa2a5120cfe7510e673d0deac01fa2550'
  name 'Yummy FTP'
  homepage 'http://www.yummysoftware.com'
  license :commercial

  app 'Yummy FTP.app'
end

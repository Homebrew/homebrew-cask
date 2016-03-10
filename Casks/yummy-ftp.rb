cask 'yummy-ftp' do
  version '1.11.3'
  sha256 '2448966d12c2a97eab79b49426c8771e231e770bdc1fb317772e9b9b2f0aadef'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          checkpoint: '2c943e1f53c6b06155d5d141ae6e8d6540a9feddb6593bf2e10313f762cf1436'
  name 'Yummy FTP'
  homepage 'http://www.yummysoftware.com'
  license :commercial

  app 'Yummy FTP.app'
end

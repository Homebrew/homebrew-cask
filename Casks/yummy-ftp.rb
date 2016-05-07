cask 'yummy-ftp' do
  version '1.11.6'
  sha256 'c9c082a1dde39e6db10736754bdc952248d990970e068dd85924859d0dd95791'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          checkpoint: '411f337a04d9e9d89d57a3cbdd8f4f1b45aab6c18bc2978a496f12a3610df3f2'
  name 'Yummy FTP'
  homepage 'http://www.yummysoftware.com'
  license :commercial

  app 'Yummy FTP.app'
end

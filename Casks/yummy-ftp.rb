cask 'yummy-ftp' do
  version '1.11.13'
  sha256 '9e85392c791f92f93b98087282a5c80035052859e98a7df9f29b8af473ab893f'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          checkpoint: '60cc382ee1ced1932e71bd1ffc35dcdb1af95c676d58963e3fa20bc402f88d5a'
  name 'Yummy FTP'
  homepage 'http://www.yummysoftware.com/'

  app 'Yummy FTP.app'
end

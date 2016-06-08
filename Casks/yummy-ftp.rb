cask 'yummy-ftp' do
  version '1.11.8'
  sha256 '99e409fbad73bbb237cb4c80e3f8bd68548a032c25f0a242f5b21434c79800cc'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          checkpoint: 'ddf586b488fe784737c12eafe70fe0b569f163789bb3aa04916c71b4bf4393ea'
  name 'Yummy FTP'
  homepage 'http://www.yummysoftware.com'
  license :commercial

  app 'Yummy FTP.app'
end

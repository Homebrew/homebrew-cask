cask 'yummy-ftp' do
  version '1.11.1'
  sha256 '43e11a1ebdeee8c9d8f49b2d5077382d81fa4140f363061137d652e4bed708af'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          :sha256 => '1fcc5720baf028384210104847e07e6107c4aeae9d020472d00457b804c7a205'
  name 'Yummy FTP'
  homepage 'http://www.yummysoftware.com'
  license :commercial

  app 'Yummy FTP.app'
end

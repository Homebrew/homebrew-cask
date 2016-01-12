cask 'yummy-ftp' do
  version '1.11.1'
  sha256 '43e11a1ebdeee8c9d8f49b2d5077382d81fa4140f363061137d652e4bed708af'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          :sha256 => '558301e72be50bd62a1e7f0ff8e15f9649759b213326451ad1ff6984c6bdf12a'
  name 'Yummy FTP'
  homepage 'http://www.yummysoftware.com'
  license :commercial

  app 'Yummy FTP.app'
end

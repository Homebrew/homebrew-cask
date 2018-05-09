cask 'yummy-ftp' do
  version '2.0.4'
  sha256 '17cbb394660776f7d5365f57a63aaa4169068463f8ef7f4973bca25567b80361'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          checkpoint: 'e8006d43862400306cd6d8b0ea88e3e8e023bf5e50324b9d61f18f0a58a03d23'
  name 'Yummy FTP'
  homepage 'https://www.yummysoftware.com/'

  app 'Yummy FTP.app'
end

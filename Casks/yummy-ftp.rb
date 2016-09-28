cask 'yummy-ftp' do
  version '1.11.10'
  sha256 'afe99bd03626f52b6ba570e1bd56197ec354367645f90b7cf5f785d3f17ec9ea'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          checkpoint: 'c6b9f30e9a3bf251db193522e60c49cea65b21f0a650423bfc393d1db56ff7c3'
  name 'Yummy FTP'
  homepage 'http://www.yummysoftware.com'
  license :commercial

  app 'Yummy FTP.app'
end

cask 'yummy-ftp' do
  version '1.11.1'
  sha256 '43e11a1ebdeee8c9d8f49b2d5077382d81fa4140f363061137d652e4bed708af'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          checkpoint: 'be9e1c0ec042b91831aff6c9a7f2e08147f50472579be634cff59f6776d410a0'
  name 'Yummy FTP'
  homepage 'http://www.yummysoftware.com'
  license :commercial

  app 'Yummy FTP.app'
end

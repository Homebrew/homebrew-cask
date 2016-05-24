cask 'yummy-ftp' do
  version '1.11.7'
  sha256 '700fc5297aaa7bf0aacdb1d60a570306741645915478f44f85d7877f95ee8f99'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          checkpoint: '0e5c021ad753473d60a7047a493f7ee77e703d4e33195144827c437db05c11c0'
  name 'Yummy FTP'
  homepage 'http://www.yummysoftware.com'
  license :commercial

  app 'Yummy FTP.app'
end

cask :v1 => 'yummy-ftp' do
  version :latest
  sha256 :no_check

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  name 'Yummy FTP'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          :sha256 => '43132791018379f3a58f94d06c4f927b7706b45e9804c5eb69f618e1db9fcfd9'
  homepage 'http://www.yummysoftware.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  tags :vendor => 'Yummy Software'

  app 'Yummy FTP.app'
end

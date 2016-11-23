cask 'yummy-ftp' do
  version '1.11.12'
  sha256 '55f963ba70c2f08d7522f6b657710b07d900bf0fd5dadd5c7f104d40c6b9d5fb'

  url 'http://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'http://www.yummysoftware.com/su/yummyftp/feed.xml',
          checkpoint: '70a3e488950656cf6b71fe10165d29b6af2c403e4023274dd084e544f61c49df'
  name 'Yummy FTP'
  homepage 'http://www.yummysoftware.com'

  app 'Yummy FTP.app'
end

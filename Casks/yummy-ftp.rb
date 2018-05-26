cask 'yummy-ftp' do
  version '2.0.5'
  sha256 '7931a694d3c2b6f61762edb2a6a61efa17bf9844f18badf3105454607343ab8e'

  url 'https://www.yummysoftware.com/downloads/YummyFTP.zip'
  appcast 'https://www.yummysoftware.com/su/yummyftp/feed.xml',
          checkpoint: 'f3b569954e323cc8893b058b8b55e662d9db99ec5b7ea62c1866a3bc070038d5'
  name 'Yummy FTP'
  homepage 'https://www.yummysoftware.com/'

  app 'Yummy FTP.app'
end

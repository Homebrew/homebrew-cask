cask 'thetube' do
  version '2.11.4'
  sha256 '08136c0408ba1453db8d0728a9afcbc45db73c52bcc8da7b871eddbeb0da73e1'

  url "http://download2.equinux.com/files/other/TheTube_#{version}_Web.zip"
  name 'TheTube'
  homepage 'https://www.equinux.com/'

  app 'TheTube.app'
end

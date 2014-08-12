class Tunnelbear < Cask
  version '2.4.2'
  sha256 'ad53bff32098e6871b3c3416b632c634672500b415a54d5afbbe7ea4f605d33d'

  url 'https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-2.4.2.zip'
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml'
  homepage 'https://www.tunnelbear.com/'

  link 'TunnelBear.app'
end

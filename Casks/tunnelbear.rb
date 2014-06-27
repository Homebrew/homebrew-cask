class Tunnelbear < Cask
  version '2.4.1'
  sha256 'e07d63fbba94677525d82a5c24b4a0fd7f572f229e3ef042fe83e7669eddf327'
  
  url 'https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-2.4.1.zip'
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml'
  homepage 'https://www.tunnelbear.com/'

  link 'TunnelBear.app'
end

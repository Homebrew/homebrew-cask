cask 'virtualhostx' do
  version '7.1.8,7_17'
  sha256 '2a65b4084ab2441086c68d27bde1b379283fe692a3e62ab8c5d2ec873db76bd8'

  # downloads-clickonideas.netdna-ssl.com/virtualhostx was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=33',
          checkpoint: 'cd403bc5d3f6916355bffb40a544dff83241b66391b0b2bc54f0dac4fa91ee7b'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'
  license :commercial

  app 'VirtualHostX.app'
end

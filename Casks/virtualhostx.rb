cask 'virtualhostx' do
  version '8.3.4,80_40'
  sha256 '27d1a3de664d3aeb85f4dd7938712a4c2ab23d1ab181f40e980b65d641d248f7'

  # downloads-clickonideas.netdna-ssl.com/virtualhostx was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=33'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'

  app 'VirtualHostX.app'
end

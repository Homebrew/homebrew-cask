cask 'virtualhostx' do
  version '7.4.1,7_21'
  sha256 '47b07d95f08011b0a74c8d18b3cf55d9a0e2effa9d17153c89eeca905a58df4e'

  # downloads-clickonideas.netdna-ssl.com/virtualhostx was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=33',
          checkpoint: 'abc502561f01d542deb09c618e56b2af354a8fb3e7008482883c5c50c3fdafd2'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'

  app 'VirtualHostX.app'
end

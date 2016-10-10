cask 'virtualhostx' do
  version '7.2.0,7_18'
  sha256 'c1457e93de50ffc74f6035bdfa1a084ba0c158114d3162d740197aabb12c8ac9'

  # downloads-clickonideas.netdna-ssl.com/virtualhostx was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=33',
          checkpoint: 'eff0ba231af74a8d803d22ef77001e27324867da3181dcec05c2d9f25c639d4e'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'

  app 'VirtualHostX.app'
end

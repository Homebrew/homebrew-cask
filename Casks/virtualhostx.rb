cask 'virtualhostx' do
  version '6.0.5'
  sha256 'f54ec0eb8ca70e543ddf0c5cf3b5ef9dcf81173ae0fd32c055dd4ebdf6c9e43e'

  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx60_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=30',
          checkpoint: '5c3afe742634cc3ff5510cf91255063f24efafe095966b2216e36bee758e7890'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'
  license :commercial

  app 'VirtualHostX.app'
end

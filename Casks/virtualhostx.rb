cask 'virtualhostx' do
  version '6.0.5'
  sha256 'f54ec0eb8ca70e543ddf0c5cf3b5ef9dcf81173ae0fd32c055dd4ebdf6c9e43e'

  url "https://downloads-clickonideas.netdna-ssl.com/virtualhostx/virtualhostx60_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=30',
          :sha256 => 'ca01646c62920aa80c5dc7b276af294bbce642542bdb1f233e982220d8f6ecbf'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'
  license :commercial

  app 'VirtualHostX.app'
end

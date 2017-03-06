cask 'zesarux' do
  version '4.2'
  sha256 '227ac23ed1f7780bc3699068e1582d9d34e3ccabdd68c5dc8ff9017d5c279bfb'

  url "https://downloads.sourceforge.net/zesarux/ZEsarUX_bin-#{version}-MountainLion_or_higher.dmg.gz"
  appcast 'https://sourceforge.net/projects/zesarux/rss',
          checkpoint: '5687bee64ebde5d8c48533c17d30bb91dabf0b25c5ccca9679d69652e3b7f7cb'
  name 'ZEsarUX'
  homepage 'https://sourceforge.net/projects/zesarux/'

  app 'ZEsarUX.app'
end

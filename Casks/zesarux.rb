cask 'zesarux' do
  version '4.1'
  sha256 'e17287a2078d51f30b5e074ed5e698775d1174348bbdfc9f7e1461cacdbb2965'

  url "https://downloads.sourceforge.net/zesarux/ZEsarUX_bin-#{version}-MountainLion_or_higher.dmg.gz"
  appcast 'https://sourceforge.net/projects/zesarux/rss',
          checkpoint: 'fbc35e41fe838ed574c9e9d8742c4643c0803e0ddb521cd99a280a91ee82f24c'
  name 'ZEsarUX'
  homepage 'https://sourceforge.net/projects/zesarux/'

  app 'ZEsarUX.app'
end

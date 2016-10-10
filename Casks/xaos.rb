cask 'xaos' do
  version '3.6'
  sha256 '1a3864f354759c03c13150ef541b48d06cf74351360a85a8b46e73a45edc7054'

  # sourceforge.net/xaos was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/xaos/xaos-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/xaos/rss',
          checkpoint: '146ea58dc7acf2fae163644fdede7c5da1caacf4c84c3f1c3745a99b7f38a1c6'
  name 'GNU XaoS'
  homepage 'http://matek.hu/xaos'

  app 'XaoS.app'
end

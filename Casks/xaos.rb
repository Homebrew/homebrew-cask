cask 'xaos' do
  version '3.6'
  sha256 '1a3864f354759c03c13150ef541b48d06cf74351360a85a8b46e73a45edc7054'

  # sourceforge.net/xaos was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/xaos/xaos-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/xaos/rss',
          checkpoint: '072ac467c33853bbe0929236999bb3e0e273a0d5ef62d6444d63ef3d8aeeed0d'
  name 'GNU XaoS'
  homepage 'http://matek.hu/xaos/doku.php'

  app 'XaoS.app'
end

cask 'xaos' do
  version '3.6'
  sha256 '1a3864f354759c03c13150ef541b48d06cf74351360a85a8b46e73a45edc7054'

  # sourceforge.net/xaos was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/xaos/xaos-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/xaos/rss'
  name 'GNU XaoS'
  homepage 'http://matek.hu/xaos/doku.php'

  app 'XaoS.app'
end

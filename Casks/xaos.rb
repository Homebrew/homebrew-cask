cask 'xaos' do
  version '3.6'
  sha256 '1a3864f354759c03c13150ef541b48d06cf74351360a85a8b46e73a45edc7054'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/xaos/xaos-#{version}-macosx.dmg"
  name 'GNU XaoS'
  homepage 'http://matek.hu/xaos'
  license :gpl

  app 'XaoS.app'
end

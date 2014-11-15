cask :v1 => 'xaos' do
  version '3.6'
  sha256 '1a3864f354759c03c13150ef541b48d06cf74351360a85a8b46e73a45edc7054'

  url "https://downloads.sourceforge.net/xaos/xaos-#{version}-macosx.dmg"
  homepage 'http://matek.hu/xaos'
  license :oss

  app 'XaoS.app'
end

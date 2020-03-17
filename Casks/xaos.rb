cask 'xaos' do
  version '3.6'
  sha256 '1a3864f354759c03c13150ef541b48d06cf74351360a85a8b46e73a45edc7054'

  # github.com/xaos-project/XaoS/ was verified as official when first introduced to the cask
  url "https://github.com/xaos-project/XaoS/releases/download/release-#{version}/xaos-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/xaos/rss'
  name 'GNU XaoS'
  homepage 'https://xaos-project.github.io/'

  app 'XaoS.app'
end

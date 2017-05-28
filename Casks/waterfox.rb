cask 'waterfox' do
  version '53.0.3'
  sha256 'b3ba545beeb1383f90a9bad90704848cb71a517356e14ca1e77db565efd43f07'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version.before_comma}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/'

  app 'Waterfox.app'
end

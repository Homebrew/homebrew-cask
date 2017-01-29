cask 'waterfox' do
  version '51.0,1'
  sha256 '1878cb6dd317b1e9483662117649e60012017eb28a51797b120d1a7ceb637a9a'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version.before_comma}%20Setup-#{version.after_comma}.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/'

  app 'Waterfox.app'
end

cask 'waterfox' do
  version '48.0.2'
  sha256 '9eda2dfb17115059b4331d9ab15cb0e0bea490251bd9af63aaf488a4fc7c92bc'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/'
  license :oss

  app 'Waterfox.app'
end

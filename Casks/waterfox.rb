cask 'waterfox' do
  version '49.0.3'
  sha256 'ac60725d3bc1932da80f6af19770f09fe53c0bffc86e068e8ce443995b9ecf26'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/'

  app 'Waterfox.app'
end

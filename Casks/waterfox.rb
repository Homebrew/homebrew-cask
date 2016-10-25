cask 'waterfox' do
  version '49.0.2.1'
  sha256 'e00909d0f0db5c24e3ce53e7fa3cc14118f7676c89ef09d1c3b878e1ec4017ca'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/'

  app 'Waterfox.app'
end

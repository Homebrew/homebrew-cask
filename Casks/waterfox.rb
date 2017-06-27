cask 'waterfox' do
  version '54.0.0.1'
  sha256 '0e603d8ce2f3258267b41ac441056cf64a66db5aab1268cdc4278142a5e17338'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version.before_comma}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/'

  app 'Waterfox.app'
end

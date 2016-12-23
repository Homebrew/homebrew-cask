cask 'waterfox' do
  version '50.1.0'
  sha256 'f06d094e315e16496aafe55d39e57962614ce924742843499abdff37738621bf'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/'

  app 'Waterfox.app'
end

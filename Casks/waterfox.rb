cask 'waterfox' do
  version '50.0'
  sha256 '74e81e64893b449d7d4a73cf2f0550692abaf804fe63d18de3cca1cd588f2c69'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/'

  app 'Waterfox.app'
end

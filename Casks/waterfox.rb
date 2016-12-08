cask 'waterfox' do
  version '50.0.2.1'
  sha256 'e0b0212707449fd5b00647734f42f82587bf1a246f73d62a5bbad0a8b8187d87'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/'

  app 'Waterfox.app'
end

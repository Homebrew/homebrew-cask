cask 'waterfox' do
  version '53.0.1'
  sha256 'c01f3b3a7ff5febf86c0151982e5a18d7a11ba9704509095d3a34ea5ff524028'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version.before_comma}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/'

  app 'Waterfox.app'
end

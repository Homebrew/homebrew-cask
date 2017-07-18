cask 'waterfox' do
  version '54.0.1'
  sha256 'd33158ea714652002a6ead9f94d4f049521031e2a32d53c25ec57921c69b3367'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version.before_comma}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/'

  app 'Waterfox.app'
end

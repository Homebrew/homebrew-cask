cask 'waterfox' do
  version '54.0'
  sha256 '3a2b2d9b960a26e966f5255e2faef5e8cdca339a0137ab99c715977ece9f262a'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version.before_comma}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/'

  app 'Waterfox.app'
end

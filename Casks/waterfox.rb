cask 'waterfox' do
  version '52.0.1'
  sha256 '895572090b15427ad974fa17238923265700fc30890c5950a27afc85e494f8f8'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version.before_comma}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/'

  app 'Waterfox.app'
end

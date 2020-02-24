cask 'there' do
  version '1.8.6'
  sha256 '9354c8d06583bb3440a3719c343f08d06c3d0aacb601b5c29b278709ef6cbdd0'

  # github.com/therehq/there-desktop was verified as official when first introduced to the cask
  url "https://github.com/therehq/there-desktop/releases/download/v#{version}/There-#{version}-mac.zip"
  appcast 'https://github.com/therehq/there-desktop/releases.atom'
  name 'There'
  homepage 'https://there.pm/'

  app 'There.app'

  uninstall signal: ['TERM', 'pm.there.desktop']
end

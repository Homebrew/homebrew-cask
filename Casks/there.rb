cask 'there' do
  version '1.8.0'
  sha256 'fd329837111170c8ae41ec1f19ae1dca6f4991c40002ef44c79705073edd2c1a'

  # github.com/therehq/there-desktop was verified as official when first introduced to the cask
  url "https://github.com/therehq/there-desktop/releases/download/v#{version}/There-#{version}-mac.zip"
  appcast 'https://github.com/therehq/there-desktop/releases.atom'
  name 'There'
  homepage 'https://there.pm/'

  app 'There.app'

  uninstall login_item: 'There',
            signal:     ['TERM', 'pm.there.desktop']
end

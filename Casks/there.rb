cask 'there' do
  version '1.7.9'
  sha256 'a6099f096df8de7ca3c76c80c48df44c44873393c7ca3847e5570b24fb7661c3'

  # github.com/therehq/there-desktop was verified as official when first introduced to the cask
  url "https://github.com/therehq/there-desktop/releases/download/v#{version}/There-#{version}-mac.zip"
  appcast 'https://github.com/therepm/there-desktop/releases.atom'
  name 'There'
  homepage 'https://there.pm/'

  app 'There.app'

  uninstall login_item: 'There',
            signal:     ['TERM', 'pm.there.desktop']
end

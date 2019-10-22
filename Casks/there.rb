cask 'there' do
  version '1.8.3'
  sha256 'becf46078c13a744c6c01aff2420113942b7c357eb9a97f277b83212c5377c3f'

  # github.com/therehq/there-desktop was verified as official when first introduced to the cask
  url "https://github.com/therehq/there-desktop/releases/download/v#{version}/There-#{version}-mac.zip"
  appcast 'https://github.com/therehq/there-desktop/releases.atom'
  name 'There'
  homepage 'https://there.pm/'

  app 'There.app'

  uninstall signal: ['TERM', 'pm.there.desktop']
end

cask 'there' do
  version '1.8.3'
  sha256 '0e9f7ea12a8546964fee9e954ddc494544b348886bc31f409eb57140900ba6dd'

  # github.com/therehq/there-desktop was verified as official when first introduced to the cask
  url "https://github.com/therehq/there-desktop/releases/download/v#{version}/There-#{version}-mac.zip"
  appcast 'https://github.com/therehq/there-desktop/releases.atom'
  name 'There'
  homepage 'https://there.pm/'

  app 'There.app'

  uninstall signal: ['TERM', 'pm.there.desktop']
end

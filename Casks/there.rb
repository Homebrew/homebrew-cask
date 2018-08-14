cask 'there' do
  version '1.7.1'
  sha256 'b1c81425612a62315e1bde0ed94c9f3178bbfe23553f84f8cf95b219d523d934'

  # github.com/therepm/there-desktop was verified as official when first introduced to the cask
  url "https://github.com/therepm/there-desktop/releases/download/v#{version}/there-desktop-#{version}-mac.zip"
  appcast 'https://github.com/therepm/there-desktop/releases.atom'
  name 'There'
  homepage 'https://there.pm/'

  app 'There.app'

  uninstall login_item: 'There',
            signal:     ['TERM', 'pm.there.desktop']
end

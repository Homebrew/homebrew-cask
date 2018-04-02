cask 'there' do
  version '1.4.0'
  sha256 '4159df1c346a6a84b20e37052431ca54ea5ca530dd4fb0e760e341b4f6cae7b3'

  # github.com/therepm/there-desktop was verified as official when first introduced to the cask
  url "https://github.com/therepm/there-desktop/releases/download/v#{version}/there-desktop-#{version}-mac.zip"
  appcast 'https://github.com/therepm/there-desktop/releases.atom',
          checkpoint: '69ddda50ce43dafff2a63d86188ca70dcd8a4f4c92173c3b24f7f1e75a80a6d5'
  name 'There'
  homepage 'https://there.pm/'

  app 'There.app'

  uninstall login_item: 'There',
            signal:     ['TERM', 'pm.there.desktop']
end

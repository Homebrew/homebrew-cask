cask 'there' do
  version '1.6.1'
  sha256 '50a0a7982d9228c700b26c3a30c587458f4512b6e87bd79f7556d9bac5c968b7'

  # github.com/therepm/there-desktop was verified as official when first introduced to the cask
  url "https://github.com/therepm/there-desktop/releases/download/v#{version}/there-desktop-#{version}-mac.zip"
  appcast 'https://github.com/therepm/there-desktop/releases.atom',
          checkpoint: '89240f6f3142b4af31d470502ed24c0fbff3cfa859270522b087fe5a6757b69c'
  name 'There'
  homepage 'https://there.pm/'

  app 'There.app'

  uninstall login_item: 'There',
            signal:     ['TERM', 'pm.there.desktop']
end

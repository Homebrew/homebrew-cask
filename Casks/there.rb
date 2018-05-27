cask 'there' do
  version '1.5.3'
  sha256 'b4bb8a372ded5ac041d6720368bba2c6628cfe6e78a69be7abde61f49b0670b5'

  # github.com/therepm/there-desktop was verified as official when first introduced to the cask
  url "https://github.com/therepm/there-desktop/releases/download/v#{version}/there-desktop-#{version}-mac.zip"
  appcast 'https://github.com/therepm/there-desktop/releases.atom',
          checkpoint: '66d03dec0b51b3baf12cf2fbac854abe95cf269b17fab464a5058bbce5fc2dfa'
  name 'There'
  homepage 'https://there.pm/'

  app 'There.app'

  uninstall login_item: 'There',
            signal:     ['TERM', 'pm.there.desktop']
end

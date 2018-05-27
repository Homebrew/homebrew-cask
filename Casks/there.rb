cask 'there' do
  version '1.5.3'
  sha256 'f9a28f0bded3f8a9fc6a20fdc502a7b6679d7c1ea93627def2666618ccc54609'

  # github.com/therepm/there-desktop was verified as official when first introduced to the cask
  url "https://github.com/therepm/there-desktop/releases/download/v#{version}/there-desktop-#{version}-mac.zip"
  appcast 'https://github.com/therepm/there-desktop/releases.atom',
          checkpoint: 'c4ac3ce39a1869c85a1002bbcd21e69f36bbef8fcdb30fe333dd02e0c3d744e4'
  name 'There'
  homepage 'https://there.pm/'

  app 'There.app'

  uninstall login_item: 'There',
            signal:     ['TERM', 'pm.there.desktop']
end

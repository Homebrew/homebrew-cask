cask 'there' do
  version '1.6.2'
  sha256 'ab6da2a6c605209622782884ca26e14bb6a76050d15b8458e41946d401eba435'

  # github.com/therepm/there-desktop was verified as official when first introduced to the cask
  url "https://github.com/therepm/there-desktop/releases/download/v#{version}/there-desktop-#{version}-mac.zip"
  appcast 'https://github.com/therepm/there-desktop/releases.atom',
          checkpoint: 'b427f9247a690f688aa0aa07b4ec7a335c7759fdb4e32abcee54d539612b2031'
  name 'There'
  homepage 'https://there.pm/'

  app 'There.app'

  uninstall login_item: 'There',
            signal:     ['TERM', 'pm.there.desktop']
end

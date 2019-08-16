cask 'wire' do
  version '3.10.3133'
  sha256 'a98fba19c4ae390da74829da77a32fad2ceed9cfe40c16d5b838323fa84b0f35'

  # github.com/wireapp/wire-desktop was verified as official when first introduced to the cask
  url "https://github.com/wireapp/wire-desktop/releases/download/macos%2F#{version}/Wire.pkg"
  appcast 'https://github.com/wireapp/wire-desktop/releases.atom'
  name 'Wire'
  homepage 'https://wire.com/'

  pkg 'Wire.pkg'

  uninstall pkgutil: 'com.wearezeta.zclient.mac',
            signal:  [
                       ['TERM', 'com.wearezeta.zclient.mac.helper'],
                       ['TERM', 'com.wearezeta.zclient.mac'],
                     ]

  zap trash: '~/Library/Containers/com.wearezeta.zclient.mac'
end

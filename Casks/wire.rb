cask 'wire' do
  version '3.5.2910'
  sha256 '0106500ac52e5f4fc85299d91dae399e2e8dd366b4637207f4673136e009a20b'

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

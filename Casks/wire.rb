cask 'wire' do
  version '3.9.2943'
  sha256 '132470e9355f05226ec6eac3e2cf57ab411bde33ddf524300a456659a5fe2bf8'

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

cask 'wire' do
  version '3.7.2930'
  sha256 '9be14a67b38640bed584db3962eaf6074c48474f89bca08174313e5c8ad838e4'

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

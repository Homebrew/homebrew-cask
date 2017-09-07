cask 'wire' do
  version '2.15.2750'
  sha256 '4c0ccf4c2993fab9fda12b40697f219dd78376eb7612d67a75e0dcccf93a4f38'

  # github.com/wireapp/wire-desktop was verified as official when first introduced to the cask
  url "https://github.com/wireapp/wire-desktop/releases/download/macos%2F#{version}/Wire.pkg"
  appcast 'https://github.com/wireapp/wire-desktop/releases.atom',
          checkpoint: 'f1b7d2c79908b9113e5129a5fdff8cc203505069c6288fbd0bba79d5cfbcdda1'
  name 'Wire'
  homepage 'https://wire.com/'

  pkg 'Wire.pkg'

  uninstall pkgutil: 'com.wearezeta.zclient.mac',
            signal:  [
                       ['TERM', 'com.wearezeta.zclient.mac.helper'],
                       ['TERM', 'com.wearezeta.zclient.mac'],
                     ]

  zap delete: '~/Library/Containers/com.wearezeta.zclient.mac'
end

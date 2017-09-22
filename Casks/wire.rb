cask 'wire' do
  version '3.0.2814'
  sha256 'f4a000ce3a0bf73deef0f480a7219ca08832504ad08dd65bede3fcab0da1e386'

  # github.com/wireapp/wire-desktop was verified as official when first introduced to the cask
  url "https://github.com/wireapp/wire-desktop/releases/download/release%2F#{version}/wire-#{version}.pkg"
  appcast 'https://github.com/wireapp/wire-desktop/releases.atom',
          checkpoint: 'a9da6b1ca1c36852f49529338ac583d2da3b5ee090bc0577fc5e0da42b3222d2'
  name 'Wire'
  homepage 'https://wire.com/'

  pkg "wire-#{version}.pkg"

  uninstall pkgutil: 'com.wearezeta.zclient.mac',
            signal:  [
                       ['TERM', 'com.wearezeta.zclient.mac.helper'],
                       ['TERM', 'com.wearezeta.zclient.mac'],
                     ]

  zap delete: '~/Library/Containers/com.wearezeta.zclient.mac'
end

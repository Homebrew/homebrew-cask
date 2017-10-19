cask 'wire' do
  version '3.1.2822'
  sha256 '969feb5757b956583d6da33445b840e51fa616924208eb941cb6e1610e0d90c4'

  # github.com/wireapp/wire-desktop was verified as official when first introduced to the cask
  url "https://github.com/wireapp/wire-desktop/releases/download/release%2F#{version}/wire-#{version}.pkg"
  appcast 'https://github.com/wireapp/wire-desktop/releases.atom',
          checkpoint: 'ba06d3cc4687d5c1c2229eb2c5b14dd485e51a338ec267636553ce304581be6a'
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

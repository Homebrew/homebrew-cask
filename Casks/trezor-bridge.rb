cask 'trezor-bridge' do
  version '1.1.3'
  sha256 'f7c80f87c2e7cdc6fcc066d01800360a704bb1ef7a00aff020fed858131838f7'

  # mytrezor.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mytrezor.s3.amazonaws.com/bridge/#{version}/trezor-bridge-#{version}.pkg"
  name 'TREZOR Bridge'
  homepage 'https://mytrezor.com/'

  pkg "trezor-bridge-#{version}.pkg"

  uninstall pkgutil:   'com.bitcointrezor.pkg.TREZORBridge',
            launchctl: 'com.bitcointrezor.trezorBridge.trezord'
end

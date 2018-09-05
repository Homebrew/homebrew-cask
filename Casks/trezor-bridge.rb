cask 'trezor-bridge' do
  version '2.0.19'
  sha256 'b55c4ab275776b97947fb34d44423b429271d689f412ff6e1a28e6152dca88d4'

  url "https://wallet.trezor.io/data/bridge/#{version}/trezor-bridge-#{version}.pkg"
  appcast 'https://wallet.trezor.io/data/bridge/latest.txt'
  name 'TREZOR Bridge'
  homepage 'https://wallet.trezor.io/'

  pkg "trezor-bridge-#{version}.pkg"

  uninstall pkgutil:   'com.bitcointrezor.pkg.TREZORBridge*',
            launchctl: 'com.bitcointrezor.trezorBridge.trezord'
end

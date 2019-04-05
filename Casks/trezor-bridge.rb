cask 'trezor-bridge' do
  version '2.0.25'
  sha256 '696cd6b3e7e34a8b72c57b4317a3ef12bb3bb1c6bbce72212a17192e29e2fc2d'

  url "https://wallet.trezor.io/data/bridge/#{version}/trezor-bridge-#{version}.pkg"
  appcast 'https://wallet.trezor.io/data/bridge/latest.txt'
  name 'TREZOR Bridge'
  homepage 'https://wallet.trezor.io/'

  pkg "trezor-bridge-#{version}.pkg"

  uninstall pkgutil:   'com.bitcointrezor.pkg.TREZORBridge*',
            launchctl: 'com.bitcointrezor.trezorBridge.trezord'
end

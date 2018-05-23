cask 'trezor-bridge' do
  version '2.0.13'
  sha256 'db580a7b3846e152a210351ef6ea487002a7d9398a41fa406d65a6c40352f230'

  url "https://wallet.trezor.io/data/bridge/#{version}/trezor-bridge-#{version}.pkg"
  appcast 'https://wallet.trezor.io/data/bridge/latest.txt',
          checkpoint: 'b43889a851b767c2082dc89467e96b56b6d41eb4cc8a14621884fe16f7c1297c'
  name 'TREZOR Bridge'
  homepage 'https://wallet.trezor.io/'

  pkg "trezor-bridge-#{version}.pkg"

  uninstall pkgutil:   'com.bitcointrezor.pkg.TREZORBridge*',
            launchctl: 'com.bitcointrezor.trezorBridge.trezord'
end

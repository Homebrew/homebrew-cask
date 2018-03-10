cask 'trezor-bridge' do
  version '2.0.9'
  sha256 '1bcdc7a7916664c7896a64717fea1db4a38e9044236010ab730261123fcc7241'

  url "https://wallet.trezor.io/data/bridge/#{version}/trezor-bridge-#{version}.pkg"
  appcast 'https://wallet.trezor.io/data/bridge/latest.txt',
          checkpoint: '9943c6efcaa36240f00e89fe037263ffa336c2999049cc278b3914c185a2fea4'
  name 'TREZOR Bridge'
  homepage 'https://wallet.trezor.io/'

  pkg "trezor-bridge-#{version}.pkg"

  uninstall pkgutil:   'com.bitcointrezor.pkg.TREZORBridge*',
            launchctl: 'com.bitcointrezor.trezorBridge.trezord'
end

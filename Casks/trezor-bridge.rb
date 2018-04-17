cask 'trezor-bridge' do
  version '2.0.12'
  sha256 '251e3b6653235527b514f81213773150e4ff38bb190b69bd9e3c507d7cf4aec1'

  url "https://wallet.trezor.io/data/bridge/#{version}/trezor-bridge-#{version}.pkg"
  appcast 'https://wallet.trezor.io/data/bridge/latest.txt',
          checkpoint: '8eb961409cf361fffd2ecefbafa8aa776bb884eca8bc5897172fcaf6c71d4b16'
  name 'TREZOR Bridge'
  homepage 'https://wallet.trezor.io/'

  pkg "trezor-bridge-#{version}.pkg"

  uninstall pkgutil:   'com.bitcointrezor.pkg.TREZORBridge*',
            launchctl: 'com.bitcointrezor.trezorBridge.trezord'
end

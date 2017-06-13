cask 'trezor-bridge' do
  version '1.2.1'
  sha256 'd87255da91d4815ab289e79d2e1609888589c42a0a22b6861f26816a4ad920da'

  # wallet.mytrezor.com/data/bridge was verified as official when first introduced to the cask
  url "https://wallet.mytrezor.com/data/bridge/#{version}/trezor-bridge-#{version}.pkg"
  appcast 'https://wallet.mytrezor.com/data/bridge/latest.txt',
          checkpoint: '6cf4e084b47f33c9b02ef79279d157833868f8f70514169a768be353ee328fea'
  name 'TREZOR Bridge'
  homepage 'https://wallet.trezor.io/'

  pkg "trezor-bridge-#{version}.pkg"

  uninstall pkgutil:   'com.bitcointrezor.pkg.TREZORBridge',
            launchctl: 'com.bitcointrezor.trezorBridge.trezord'
end

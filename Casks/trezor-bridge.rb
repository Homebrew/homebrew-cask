cask 'trezor-bridge' do
  version '1.2.0'
  sha256 'be5b39d77e142ba87dab75fd7c0c8840fb69ad47acad4ace1acc8f66ff777ec5'

  url "https://wallet.mytrezor.com/data/bridge/#{version}/trezor-bridge-#{version}.pkg"
  appcast 'https://wallet.mytrezor.com/data/bridge/latest.txt',
          checkpoint: '1e5b51cde515396a9fa762909cf8ca6584ccc564b325d2eebeea76175fe95c4d'
  name 'TREZOR Bridge'
  homepage 'https://wallet.mytrezor.com/'

  pkg "trezor-bridge-#{version}.pkg"

  uninstall pkgutil:   'com.bitcointrezor.pkg.TREZORBridge',
            launchctl: 'com.bitcointrezor.trezorBridge.trezord'
end

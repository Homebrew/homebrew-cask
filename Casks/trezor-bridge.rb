cask :v1 => 'trezor-bridge' do
  version '1.1.2'
  sha256 '95780f24cd7a4a6a30a3f715502ad436f036571b38e693edd88d347abc4348ab'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://mytrezor.s3.amazonaws.com/bridge/#{version}/trezor-bridge-#{version}.pkg"
  name 'TREZOR Bridge'
  homepage 'https://mytrezor.com/'
  license :gratis

  pkg "trezor-bridge-#{version}.pkg"

  uninstall :pkgutil   => 'com.bitcointrezor.pkg.TREZORBridge',
            :launchctl => 'com.bitcointrezor.trezorBridge.trezord'
end

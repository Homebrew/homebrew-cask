cask :v1 => 'trezor-bridge' do
  version '1.1.0'
  sha256 '7002758ec4615130a163b8b0046fa63d7c0ac8ce67aa4ffc1a5dc0e07af6bf72'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://mytrezor.s3.amazonaws.com/bridge/#{version}/trezor-bridge-#{version}.pkg"
  name 'TREZOR Bridge'
  homepage 'https://mytrezor.com/'
  license :gratis

  pkg "trezor-bridge-#{version}.pkg"

  uninstall :pkgutil   => 'com.bitcointrezor.pkg.TREZORBridge',
            :launchctl => 'com.bitcointrezor.trezorBridge.trezord'

  depends_on :formula => 'protobuf'
  depends_on :formula => 'libmicrohttpd'
end

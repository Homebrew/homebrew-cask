cask :v1 => 'trezor-bridge' do
  version '1.1.0'
  sha256 'c1d80463b6327b24c17adb431b411ccde7dcf3e94615548ccd6af2e60923fa69'

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

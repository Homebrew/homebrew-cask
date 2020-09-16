cask "trezor-bridge" do
  version "2.0.27"
  sha256 "a8a5352f888467cb1bc3b4273ee26c7f0da2a58f60e31aeffea46153aa03be07"

  url "https://wallet.trezor.io/data/bridge/#{version}/trezor-bridge-#{version}.pkg"
  appcast "https://wallet.trezor.io/data/bridge/latest.txt"
  name "TREZOR Bridge"
  homepage "https://wallet.trezor.io/"

  pkg "trezor-bridge-#{version}.pkg"

  uninstall pkgutil:   "com.bitcointrezor.pkg.TREZORBridge*",
            launchctl: "com.bitcointrezor.trezorBridge.trezord",
            delete:    "/Applications/Utilities/TREZOR Bridge"

  zap trash: "~/Library/Logs/trezord.log"
end

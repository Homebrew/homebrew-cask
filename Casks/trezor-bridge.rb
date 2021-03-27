cask "trezor-bridge" do
  version "2.0.30"
  sha256 "1732f13d6408eec23aa2a255717ed7646678e5150c4814fc0b423d2bc29c6920"

  url "https://github.com/trezor/webwallet-data/raw/master/bridge/#{version}/trezor-bridge-#{version}.pkg",
      verified: "github.com/trezor/webwallet-data/"
  appcast "https://github.com/trezor/webwallet-data/tree/master/bridge"
  name "TREZOR Bridge"
  desc "Facilitates communication between the Trezor device and supported browsers"
  homepage "https://wallet.trezor.io/"

  pkg "trezor-bridge-#{version}.pkg"

  uninstall pkgutil:   "com.bitcointrezor.pkg.TREZORBridge*",
            launchctl: "com.bitcointrezor.trezorBridge.trezord",
            delete:    "/Applications/Utilities/TREZOR Bridge"

  zap trash: "~/Library/Logs/trezord.log"
end

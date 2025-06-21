cask "yubihsm2-sdk" do
  arch arm: "arm64", intel: "amd64"

  version "2025-06"
  sha256 arm:   "33b552a675b226a22412732ebbc2c1adbcef6589f5fe8e6661fb8a9c7db09c39",
         intel: "58e5cf8438d6e111402f9af6aaf5b2ec7470df04cc51db98c5879c24cfe2472b"

  url "https://developers.yubico.com/YubiHSM2/Releases/yubihsm2-sdk-#{version}-darwin-#{arch}.pkg"
  name "YubiHSM 2 SDK"
  desc "Libraries and utilities to interact with a YubiHSM 2 natively and via PKCS#11"
  homepage "https://developers.yubico.com/YubiHSM2/"

  livecheck do
    url "https://developers.yubico.com/YubiHSM2/Releases/"
    regex(%r{href=.*?/yubihsm2-sdk[._-]v?(\d+(?:[.-]\d+)+)-darwin-#{arch}\.pkg}i)
  end

  no_autobump! because: :requires_manual_review

  pkg "yubihsm2-sdk-#{version}-darwin-#{arch}.pkg"

  uninstall pkgutil: "com.yubico.yubihsm2-sdk"

  # No zap stanza required
end

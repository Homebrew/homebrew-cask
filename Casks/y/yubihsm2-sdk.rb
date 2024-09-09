cask "yubihsm2-sdk" do
  arch arm: "arm64", intel: "amd64"

  version "2024-09"
  sha256 arm:   "95eea279c84f6bc472746ba62c263dd6a317a1a031a8ef6b2285225e1fad08a9",
         intel: "ffa41fd6b59370aa9184a712a1f508f1c8d600d539d8f8a00dde6e076fd5dec8"

  url "https://developers.yubico.com/YubiHSM2/Releases/yubihsm2-sdk-#{version}-darwin-#{arch}.pkg"
  name "YubiHSM 2 SDK"
  desc "Libraries and utilities to interact with a YubiHSM 2 natively and via PKCS#11"
  homepage "https://developers.yubico.com/YubiHSM2/"

  livecheck do
    url "https://developers.yubico.com/YubiHSM2/Releases/"
    regex(%r{href=.*?/yubihsm2-sdk[._-]v?(\d+(?:[.-]\d+)+)-darwin-#{arch}\.pkg}i)
  end

  pkg "yubihsm2-sdk-#{version}-darwin-#{arch}.pkg"

  uninstall pkgutil: "com.yubico.yubihsm2-sdk"

  # No zap stanza required
end

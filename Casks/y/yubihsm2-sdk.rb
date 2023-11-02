cask "yubihsm2-sdk" do
  arch arm: "arm64", intel: "amd64"

  version "2023-11"
  sha256 arm:   "0eb0a878ce3c35644b7a7a264f4ba5f3309af04e499ab258744b3a5f11bfe5ed",
         intel: "b27a5dfa6e3a6c3deb282668220eda93a09c05ba80b25276d35ee95b35326ad2"

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

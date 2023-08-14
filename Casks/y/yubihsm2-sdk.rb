cask "yubihsm2-sdk" do
  arch arm: "arm64", intel: "amd64"

  version "2023-08"
  sha256 arm:   "13667895f6e83b7c98279a1422ca8af23da60fb4250ce576ee7144da7e25ccd2",
         intel: "6f755b2d19b55e69191bfc8799afced986d223e300e3d5f317aed1fe3a4ea39b"

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
end

cask "yubihsm2-sdk" do
  arch arm: "arm64", intel: "amd64"

  version "2026-04"
  sha256 arm:   "2f8e80e97acdb3e2bad353e545ff799b7951d8d13a8c313cf212b4554c9e0612",
         intel: "89d227829525bcc5f50c6e32df24cf8fc25d1a836dd1370e87359ad75c2cca59"

  url "https://developers.yubico.com/YubiHSM2/Releases/yubihsm2-sdk-#{version}-darwin-#{arch}.pkg"
  name "YubiHSM 2 SDK"
  desc "Libraries and utilities to interact with a YubiHSM 2 natively and via PKCS#11"
  homepage "https://developers.yubico.com/YubiHSM2/"

  livecheck do
    url "https://developers.yubico.com/YubiHSM2/Releases/"
    regex(/href=.*?yubihsm2-sdk[._-]v?(\d+(?:[.-]\d+)+[a-z]?)[._-]darwin[._-]#{arch}\.pkg/i)
  end

  depends_on :macos

  pkg "yubihsm2-sdk-#{version}-darwin-#{arch}.pkg"

  uninstall pkgutil: "com.yubico.yubihsm2-sdk"

  # No zap stanza required
end

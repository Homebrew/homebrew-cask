cask "yubihsm2-sdk" do
  arch arm: "arm64", intel: "amd64"

  version "2025-06b"
  sha256 arm:   "d4105f662a665e4d39f6d88f0b062d2e146f986ebcf66d337939625c507c29b9",
         intel: "cb2537adc96cef396292351da266e0e526844679dccd9ef5fa16465d6b019124"

  url "https://developers.yubico.com/YubiHSM2/Releases/yubihsm2-sdk-#{version}-darwin-#{arch}.pkg"
  name "YubiHSM 2 SDK"
  desc "Libraries and utilities to interact with a YubiHSM 2 natively and via PKCS#11"
  homepage "https://developers.yubico.com/YubiHSM2/"

  livecheck do
    url "https://developers.yubico.com/YubiHSM2/Releases/"
    regex(/href=.*?yubihsm2-sdk[._-]v?(\d+(?:[.-]\d+)+[a-z]?)[._-]darwin[._-]#{arch}\.pkg/i)
  end

  pkg "yubihsm2-sdk-#{version}-darwin-#{arch}.pkg"

  uninstall pkgutil: "com.yubico.yubihsm2-sdk"

  # No zap stanza required
end

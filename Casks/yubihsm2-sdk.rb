cask "yubihsm2-sdk" do
  arch arm: "arm64", intel: "amd64"

  version "2023-01"
  sha256 arm:   "6d2ba229e18999cf0f4cca032a0e98e40fdd886031d4ca9e2a9869fb5e9eaef2",
         intel: "a33fb8dd768d37e80753ebc2a7e8b526766fc10bb9afdc0108273ca16306bb45"

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

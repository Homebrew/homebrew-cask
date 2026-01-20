cask "yubihsm2-sdk" do
  arch arm: "arm64", intel: "amd64"

  version "2026-01"
  sha256 arm:   "f2e907fad5a8ee485d497bb7c9d31364901601872192322d30ea0cac5931d4a5",
         intel: "447327839168f835e627f80cf1912b5978bdd2d7b851fbe4c9a60231a3f7d6b6"

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

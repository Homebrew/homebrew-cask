cask "yubihsm2-sdk" do
  arch arm: "arm64", intel: "amd64"

  version "2026-03"
  sha256 arm:   "738637874c5db6fa4f7349d5ce30ad6b9e6f0e5b5231c1db5e4dc65d05178e11",
         intel: "d7b42d291d05fd6fbf87fcc6ba7506ae102e9a6bb13a83b57aec3bc589040fb0"

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

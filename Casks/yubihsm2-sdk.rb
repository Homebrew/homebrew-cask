cask "yubihsm2-sdk" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "2022-06"

  if Hardware::CPU.intel?
    sha256 "fddd316127c460a604372ebbf41f01e3b9ef50b28ee5686915b663dd8f88cdc0"
  else
    sha256 "7363999e43afc4471853a4d7254de71e4d5f5c84d5e2febd1693d7bf22a1e525"
  end

  url "https://developers.yubico.com/YubiHSM2/Releases/yubihsm2-sdk-#{version}-darwin-#{arch}.pkg"
  name "YubiHSM 2 SDK"
  desc "Libraries and utilities to interact with a YubiHSM 2 natively and via PKCS#11"
  homepage "https://developers.yubico.com/YubiHSM2/"

  livecheck do
    url "https://developers.yubico.com/YubiHSM2/Releases/"
    regex(%r{href=.*?/yubihsm2-sdk-(\d\d\d\d-[^-]+)-darwin-#{arch}\.pkg}i)
  end

  pkg "yubihsm2-sdk-#{version}-darwin-#{arch}.pkg"

  uninstall pkgutil: "com.yubico.yubihsm2-sdk"
end

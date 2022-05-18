cask "trezor-suite" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "22.5.2"

  if Hardware::CPU.intel?
    sha256 "f5bba9bcee3239ee8ff5ddb0fccf70408e9be5bbfbc2a2c412994e9e37d3d73a"
  else
    sha256 "d3efd6807572ca184081c95ce66989efe4a64ab965b33d0b85c0b99aee65632a"
  end

  url "https://suite.trezor.io/web/static/desktop/Trezor-Suite-#{version}-mac-#{arch}.dmg"
  name "TREZOR Suite"
  desc "Companion app for the Trezor hardware wallet"
  homepage "https://suite.trezor.io/"

  livecheck do
    url "https://github.com/trezor/trezor-suite"
    strategy :github_latest
  end

  auto_updates true

  app "Trezor Suite.app"

  zap trash: [
    "~/Library/Application Support/@trezor/suite-desktop",
    "~/Library/Preferences/io.trezor.TrezorSuite.plist",
  ]
end

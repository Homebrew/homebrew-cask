cask "trezor-suite" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "22.5.3"

  if Hardware::CPU.intel?
    sha256 "d7e2b538c443155a6c3d43d5213d003fab86161da4f1bdcf3c2708fee83d4fd0"
  else
    sha256 "f423d6f7b1684e740bb1425f8a8a429818006102f5ab0f5332f495c12aae96dd"
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

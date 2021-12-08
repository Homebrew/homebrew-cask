cask "trezor-suite" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "21.12.1"

  if Hardware::CPU.intel?
    sha256 "fdf2e06efe885740272eb94ef87830d6c1aeae3456f7af2a8b2ac9a2fae818d0"
  else
    sha256 "dfee8c5abc4ac243c40edb6faf73f8541c1c4701e8f3a38c0a7d2591ac09e190"
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

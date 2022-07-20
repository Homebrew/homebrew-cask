cask "trezor-suite" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "22.7.2"

  if Hardware::CPU.intel?
    sha256 "009798c859044412b3171db06cc99767b18fa568ea743e3f813b755a3725b199"
  else
    sha256 "00dd0ee81727644522f9d4e80a26a1dabee509aa61efc8268c863a6cf4811f30"
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

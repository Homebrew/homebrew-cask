cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "23.2.1"
  sha256 arm:   "461eb8089a0188717040aa23bc712d924bae77c9e134c1a2bbc04b21dc6cf59a",
         intel: "f8cd33c86f2ba81e2c5239fa9c32cb05604b00c6d1b6bd25794f3b0436fd27ef"

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

cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "22.12.1"
  sha256 arm:   "69f957143461f4c0863f82f752aa8c28c4004fd94fc53937aa02f9eb2a11fda5",
         intel: "e6d81574003225d5651d90ff0e54de8739c2fa5f0012a01a83512279c867bcb5"

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

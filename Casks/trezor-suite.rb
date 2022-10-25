cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "22.10.3"
  sha256 arm:   "1f966b5881444b771ba171187e6b9f5065d6b2061d99aff33538dbe96e2f2ef4",
         intel: "d422a2f0720d8f900ac954b60008d88cc8603788549845e89ac92da11a69a064"

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

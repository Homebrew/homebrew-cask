cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "23.6.1"
  sha256 arm:   "a33d978ca9803df395a8f7a54d6459b4e19a75d2f149d3707391564ab140df9c",
         intel: "a53ef7689dbfc89c11679ed80ccf9b35fce6a7debb51fa8094961fefb212decd"

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

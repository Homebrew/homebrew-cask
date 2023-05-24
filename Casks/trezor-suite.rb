cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "23.5.2"
  sha256 arm:   "53dbb1375348a7cb320d909de0ee4517d863778cb16089c008cee36b8a08d9ff",
         intel: "97d5054d76c29937eb214783a86e26bcad54181f941499d9e3490b824f078e0a"

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

cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "22.11.1"
  sha256 arm:   "1201bd9764e95a808badeb7786e392b233cbabf38d707723cd595b4bb942d576",
         intel: "644aa463f5bbe505bc618e37d042675504b4c9ec1ef97f489bfe08a6e9a6f13e"

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

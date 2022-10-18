cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "22.9.3"
  sha256 arm:   "4de35c611a076c48bfcfdf25e7b4ab2d84653e4b5b84be14a84463d59c6bc747",
         intel: "c762364211e9d0f6ba11d1db4c59dd1d6faf1e9b313a776aba3682426f027815"

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

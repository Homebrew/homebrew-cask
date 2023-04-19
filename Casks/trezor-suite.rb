cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "23.4.2"
  sha256 arm:   "f6975515d055c06285fc58796d8d946503730be713d13c775f3bda8c6ede3330",
         intel: "43f05abc9cf6beab24f871a408b3e179bfc46f88bcfee820bab07734cf8c4013"

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

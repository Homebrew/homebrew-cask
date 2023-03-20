cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "23.3.2"
  sha256 arm:   "d216dc40ad11c38b3d94033d7be84e58d98bf9aae2b52b0872512475444ff4ba",
         intel: "4718828518520efb658d374af81cac000a790559db35eac45fabf95dbf6d1f59"

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

cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "22.10.2"
  sha256 arm:   "144ebeec7642a8e747f07bca34763e23f12d04d9c6aa74247b1c7e8bd2c11a02",
         intel: "54ba97e2b1bc29e3d4c11b3a7433db75d7af900c00bacc39d02c10ed8644e983"

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

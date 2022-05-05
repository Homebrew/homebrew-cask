cask "trezor-suite" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "22.4.3"

  if Hardware::CPU.intel?
    sha256 "69c639a8715275f3aa69a8fcc5a251074b6dc9264450df7501bc4e3aab50e0a5"
  else
    sha256 "5fc8cb315be6bba9061fcf99504af6dab76d69e3094daac8c78a56172867e154"
  end

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

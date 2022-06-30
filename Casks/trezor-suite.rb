cask "trezor-suite" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "22.6.4"

  if Hardware::CPU.intel?
    sha256 "455bdc0e4180b9c799e7db9b3bb95fb70dd504d5db97cd997f391bddb24aa724"
  else
    sha256 "ce0f9611b0487f34f1c3329b136d023d039bc3b09fd40b96ecbd0b9c6e55dab8"
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

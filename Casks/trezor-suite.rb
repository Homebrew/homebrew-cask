cask "trezor-suite" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "21.10.2"

  url "https://suite.trezor.io/web/static/desktop/Trezor-Suite-#{version}-mac-#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "f2043d03f8bd71373f09634cedf44425702398b3453ab6d541683a8accd58d2a"
  else
    sha256 "5a7eeac02cfa9efa4fb411b49cbe1fe7a763e8e1f043a300def1532d4da836da"
  end

  name "TREZOR Suite"
  desc "Companion app for the Trezor hardware wallet"
  homepage "https://suite.trezor.io/"

  livecheck do
    url :homepage
    regex(/Trezor-Suite-(\d+(?:\.\d+)*)-/i)
  end

  app "Trezor Suite.app"

  zap trash: [
    "~/Library/Application Support/@trezor/suite-desktop",
    "~/Library/Preferences/io.trezor.TrezorSuite.plist",
  ]
end

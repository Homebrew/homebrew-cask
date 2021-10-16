cask "trezor-suite" do
  version "21.10.2"

  if Hardware::CPU.intel?
    sha256 "f2043d03f8bd71373f09634cedf44425702398b3453ab6d541683a8accd58d2a"
    url "https://suite.trezor.io/web/static/desktop/Trezor-Suite-#{version}-mac-x64.dmg"
  else
    sha256 "5a7eeac02cfa9efa4fb411b49cbe1fe7a763e8e1f043a300def1532d4da836da"
    url "https://suite.trezor.io/web/static/desktop/Trezor-Suite-#{version}-mac-arm64.dmg"
  end

  name "TREZOR Suite"
  desc "Companion app for the Trezor hardware wallet"
  homepage "https://suite.trezor.io/"

  livecheck do
    url :homepage
    regex(/href=.*?Trezor-Suite-(\d+(?:\.\d+)*)-/i)
  end

  app "Trezor Suite.app"

  zap trash: [
    "~/Library/Application Support/@trezor/suite-desktop",
    "~/Library/Preferences/io.trezor.TrezorSuite.plist",
  ]
end

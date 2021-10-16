cask "trezor-suite" do
  version "21.10.2"
  sha256 "5a7eeac02cfa9efa4fb411b49cbe1fe7a763e8e1f043a300def1532d4da836da"

  url "https://suite.trezor.io/web/static/desktop/Trezor-Suite-#{version}-mac.dmg"
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

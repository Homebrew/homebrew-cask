cask "trezor-suite" do
  version "21.9.2"
  sha256 "6423cbc17171a89e7bf801411e5db5d7018b84071df46ba667873ba598ae2af6"

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

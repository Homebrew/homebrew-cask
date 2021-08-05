cask "trezor-suite" do
  version "21.7.1"
  sha256 "23c84ba9bdf952404d7c69d29c8813ef052a4448176af3f08180d45268a8d4cd"

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

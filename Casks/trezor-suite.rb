cask "trezor-suite" do
  version "21.8.1"
  sha256 "b262aaef20ce7054db960430d69c84e470e33372ad0eb3d54b79734c95f9fc79"

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

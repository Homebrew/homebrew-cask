cask "trezor-suite" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "21.11.2"

  url "https://suite.trezor.io/web/static/desktop/Trezor-Suite-#{version}-mac-#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "1aa1977d19787529e1ec49292e1c7ee305fbc4430f79729ece3aad7eb4e2bad5"
  else
    sha256 "75751697fdf87a335b94af01ded4ccaefba6fdf2d46a04f087d46771c473c6c8"
  end

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

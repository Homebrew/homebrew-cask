cask "trezor-suite" do
  arch arm: "arm64", intel: "x64"

  version "22.8.2"
  sha256 arm:   "bd4f577faa18215fd2bebdb2cc93e0ce3aa5e968ed5fc03ee9923cd24eb4a2e5",
         intel: "a8a34656713cd849881fa1e902bc816320187ad347e764ac50279f1cb4a0d722"

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

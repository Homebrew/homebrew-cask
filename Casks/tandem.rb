cask "tandem" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.0.1001"

  url "https://download.todesktop.com/200527auaqaacsy/Tandem%20#{version}-#{arch}.dmg",
      verified: "download.todesktop.com/200527auaqaacsy/"
  if Hardware::CPU.intel?
    sha256 "3aa0926745eb589656908de80dd68c7c6725791d5366efe8517f725a8891232b"
  else
    sha256 "c87bd5a231852cab6d87a07489d932af413e2e4877abb16130e154426215ca44"
  end

  name "Tandem"
  desc "Virtual office for remote teams"
  homepage "https://tandem.chat/"

  livecheck do
    url "https://download.todesktop.com/200527auaqaacsy/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Tandem.app"

  zap trash: [
    "~/Library/Application Support/Caches/tandem-updater",
    "~/Library/Application Support/Tandem",
    "~/Library/Caches/tandem.app",
    "~/Library/Caches/tandem.app.ShipIt",
    "~/Library/Logs/Tandem",
    "~/Library/Preferences/ByHost/tandem.app.ShipIt.*.plist",
    "~/Library/Preferences/tandem.app.plist",
    "~/Library/Saved Application State/tandem.app.savedState",
  ]
end

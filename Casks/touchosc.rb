cask "touchosc" do
  version "1.1.3,141"
  sha256 "abfd9a5821695c9a3f60e3640c9e05f6739374316b4ad36fdd724bff7ccf2c15"

  url "https://hexler.net/pub/touchosc/touchosc-#{version.csv.first}.#{version.csv.second}-macos.dmg"
  name "touchosc"
  desc "MIDI and OSC Controller Software"
  homepage "https://hexler.net/touchosc"

  livecheck do
    url "https://hexler.net/touchosc/appcast/macos/"
    strategy :sparkle
  end

  auto_updates true

  app "TouchOSC.app"

  zap trash: [
    "~/Documents/TouchOSC",
    "~/Library/Application Support/net.hexler.lex",
    "~/Library/Caches/net.hexler.lex",
    "~/Library/Logs/net.hexler.lex",
    "~/Library/Preferences/net.hexler.lex.plist",
    "~/Library/Saved Application State/net.hexler.lex.savedState",
  ]
end

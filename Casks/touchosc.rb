cask "touchosc" do
  version "1.0.8,122"
  sha256 "59f8959aadb95e9d20eaadf48e2e60cb5daf2611897064888c7f48d452a88873"

  url "https://hexler.net/pub/touchosc/touchosc-#{version.before_comma}.#{version.after_comma}-macos.dmg"
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

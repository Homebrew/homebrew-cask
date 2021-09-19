cask "touchosc" do
  version "1.0.6,112"
  sha256 "9afceec82514f3df558a2d578ac4ea597c9949c9dbff0c72f555dafec40e7ee8"

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

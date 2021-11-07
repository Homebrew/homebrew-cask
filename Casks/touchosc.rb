cask "touchosc" do
  version "1.0.7,117"
  sha256 "77b8d0d4b62cfaf63420d8dcc02bc46fa858df9cc57a9aa418da11da69eaf801"

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

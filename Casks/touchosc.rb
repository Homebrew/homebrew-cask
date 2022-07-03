cask "touchosc" do
  version "1.1.4,143"
  sha256 "a6dcdca23496679dd380fbfa140e4b9ef101593987bbbe176f910b6030bc3dcb"

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

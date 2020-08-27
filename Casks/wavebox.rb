cask "wavebox" do
  version "10.0.230.1"
  sha256 "33f316e97394bbb67270dd785114393f9993db41d4480171cb0ae0d439a62915"

  # download.wavebox.app/ was verified as official when first introduced to the cask
  url "https://download.wavebox.app/core/mac/Install%20Wavebox%20#{version}.dmg"
  appcast "https://download.wavebox.app/core/mac/appcast.xml"
  name "Wavebox"
  homepage "https://wavebox.io/"

  auto_updates true

  app "Wavebox.app"

  uninstall quit: "io.wavebox.wavebox"

  zap trash: [
    "~/Library/Application Support/WaveboxApp",
    "~/Library/Caches/com.bookry.wavebox",
    "~/Library/Caches/WaveboxApp",
    "~/Library/Preferences/com.bookry.wavebox.plist",
    "~/Library/Saved Application State/com.bookry.wavebox.savedState",
  ]
end

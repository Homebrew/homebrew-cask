cask "wavebox" do
  version "10.0.216.1"
  sha256 "a59d3ddd5d2eacc07ed3226e45cc9f3b4c3c4abf5c86353f930b9651da13bcd1"

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

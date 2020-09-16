cask "wavebox" do
  version "10.0.265.1"
  sha256 "112427c4fec39fcbe958434eafe9ce97906492d2e8413b45e450abec5cc48ccd"

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

cask "wavebox" do
  version "10.0.225.1"
  sha256 "42553fb07242c08c2a31352de06f7baaaf164c083b4df96d08bc3ef2a8b4f3fc"

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

cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.114.17.2"
  sha256 arm:   "0ae8e889255dec1bd2d7b4c0b1a110c6c94bc793740a52929e6da0f44a499b75",
         intel: "6e4226bed7d0462c63d9fe1f532a1dd2cd96ca19fbf0ad3429202273f6dfb0c8"

  url "https://download.wavebox.app/stable/#{arch}/Install%20Wavebox%20#{version}.dmg",
      verified: "download.wavebox.app/"
  name "Wavebox"
  desc "Web browser"
  homepage "https://wavebox.io/"

  livecheck do
    url "https://download.wavebox.app/latest/stable/mac"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :sierra"

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

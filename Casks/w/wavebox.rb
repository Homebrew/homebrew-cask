cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.117.18.2"
  sha256 arm:   "4364bac6b85c6b9547448d284c66f2c1a1c0f001c7af731f17fa6fb0b61b4241",
         intel: "c33c24fd64726d7f5615936cfa4e07c4bdb5c238bfc051b452466f18f5959e4c"

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

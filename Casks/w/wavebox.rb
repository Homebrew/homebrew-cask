cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.125.53.2"
  sha256 arm:   "63d30a94fd4e4c6ba2302fad41ee64585d0e370ce974098f4228c02f96b9e1a4",
         intel: "ea0a77f2138bce14c461a24f9975d6782334c214fbe497e2c7f2f9592584f811"

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

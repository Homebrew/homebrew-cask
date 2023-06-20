cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.114.26.2"
  sha256 arm:   "6ba1c1c302151bf5ffdef6c32231997248d84091b68fd0fc627f99c9f2c1b49d",
         intel: "fa41c5c83247eb45f77985c37c8c5e791d30482d9777f8e2d78c739ed04064d9"

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

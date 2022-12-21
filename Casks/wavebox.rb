cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.108.19.2"
  sha256 arm:   "6a9e4f2fd433de5fec12b59202a76b18b4a1f7cb11cdaae08984cd74fd3a5fce",
         intel: "cd38238c7f6eeeceaa91b65cc0ab4362c2a68f8f03350e1f36d9b734cdd5836e"

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

cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.105.31.2"
  sha256 arm:   "b1c6c807c375ea855d9394a030cd53bbe7319edf133f4a0b5d94613241930192",
         intel: "ea1f16b64849430eb77929aeb20f9ec8af0bc671d0600acc971a402db7355c4f"

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

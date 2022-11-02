cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.107.10.2"
  sha256 arm:   "4df3c6a7ca48d5076f1c2e2c867b5b69c5c56b3924a86eddb22110d62ef904d6",
         intel: "c75a63f667ddb9ec70e0f9643584e1e35a62cbb8fe8a61fef8aa8e75f79a00bb"

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

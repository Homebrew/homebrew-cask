cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.105.22.2"
  sha256 arm:   "4cc4f44c0e2637a949392d0591a17f36854211d4245491067eae1ea09ea023a1",
         intel: "e0f1d34ba6cdd2a73669ae1e220d7aaba450261f9b2695a358e0f31e72dd1c41"

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

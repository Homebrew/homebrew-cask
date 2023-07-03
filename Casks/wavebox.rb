cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.114.32.2"
  sha256 arm:   "cce587d9e0ede757f01d387809b845f7ff6a61618528d2e8fe66f4fbf1d9207a",
         intel: "6d6b95feb76567a21bce0dcdc1bd1322bfc9453f6ed93cfd5ca9f40c0dbc03af"

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

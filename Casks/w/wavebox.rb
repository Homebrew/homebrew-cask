cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.129.32.2"
  sha256 arm:   "f1f622d5e616ec45d04ac39c65454e24973ab41069ce458713bf6a5d9dc42a80",
         intel: "cdfb1c3904e6570e68ed0d57e72ec6e0f76ee93c74032aae34a04afa00a6cee5"

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

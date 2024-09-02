cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.128.5.2"
  sha256 arm:   "9cfb1332e30a731bfcedfd860d2e9f01499bbabcbf887e4d18450e27ca7fa188",
         intel: "fe642dea78119039881fc04cff7f11b5ca5d4b8d0ed7087dd2141818c256001d"

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

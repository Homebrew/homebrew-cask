cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.131.16.2"
  sha256 arm:   "45cf543a0cab40b9f05c67d5256e1cde27cbba7b4e9bd45b36879cfbc3882ece",
         intel: "f590fd68c288cd272fe58caa59bcac77bf3040f560966167fbb798c1a7528b75"

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

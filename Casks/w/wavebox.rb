cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.130.3.2"
  sha256 arm:   "50f3e6a8591f72c3d6085bdaeb045c4c8e084fec4669d50233a8b62f70f03959",
         intel: "fe5118ce1eac637f50c1f5d13308742b6a356f83264a34beed105c4aaf3fa8cf"

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

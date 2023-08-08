cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.115.27.2"
  sha256 arm:   "d3db0c8172516f3b553aa50253c73f78a23e1ee42d246f3327f021d056fe23ee",
         intel: "4cdc465d120daa7eeb69f15ee57f9f5b51982975003c5a3d85a89107f6c20c27"

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

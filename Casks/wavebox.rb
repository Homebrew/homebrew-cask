cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.111.36.2"
  sha256 arm:   "cac5ff0a656136df0793cfd9612388ecb6060f2af2934a6fa06064047ccc34bd",
         intel: "a32bcbad68b4da7fcb814da44febfd8ac684b7e282a4eb124be6ab1634dd67d0"

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

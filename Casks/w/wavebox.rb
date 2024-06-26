cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.126.14.2"
  sha256 arm:   "d10bb6e40e7633881c135e7f0574c27eb7c825c81a2a3b7395b9668392fde063",
         intel: "e667cbf1d6add06a820c6fa45b67778a7c9631aa7d6d95835a2ab41ebf27f069"

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

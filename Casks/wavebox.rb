cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.110.12.2"
  sha256 arm:   "6985c01ff991bd7093ffdbe5fa470d0d331d5bf5b8a606c8d55a1449522cb43f",
         intel: "e5deed6b5dd9a79a8571e636055283012f33632d0451fe1ed8624cc001f3993c"

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

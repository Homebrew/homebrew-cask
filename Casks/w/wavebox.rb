cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.124.17.2"
  sha256 arm:   "e6990475bd6b3f5ac00994d6b5e810fb35ce077f3c4b0e5fcf2796970557e7fc",
         intel: "f645f859dfa282211b24642fd5c4d940a2284a2d2e2ba6b39efcd428676b959e"

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

cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.128.3.2"
  sha256 arm:   "61a91017d52cd6d2c3b8257b1c4208ab900f3d20d7bd5b075799f00d49b81182",
         intel: "fc8c48c1985cbb0563ff4a93cdf847b609c3e4823e5cb30571f9adff5d04ba25"

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

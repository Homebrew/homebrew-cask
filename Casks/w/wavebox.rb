cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.129.27.2"
  sha256 arm:   "7e6500af2fe8b549871375bc4b0cf5bbf7363c65a6beccbe8a2bb91053a27e70",
         intel: "d3d65a2576bbfc22d7b3438c638e1c990331c88ce1d10ee2ebed2ccf07c52912"

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

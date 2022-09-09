cask "tidal" do
  arch arm: ".arm64"

  on_intel do
    version "2.30.0"
  end
  on_arm do
    version "2.33.2"
  end

  sha256 :no_check

  url "https://download.tidal.com/desktop/TIDAL#{arch}.dmg"
  name "TIDAL"
  desc "Music streaming service with high fidelity sound and hi-def video quality"
  homepage "https://tidal.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "TIDAL.app"

  zap trash: [
    "~/Library/Application Support/TIDAL",
    "~/Library/Caches/com.tidal.desktop",
    "~/Library/Caches/com.tidal.desktop.ShipIt",
    "~/Library/Logs/TIDAL",
    "~/Library/Preferences/com.tidal.*",
    "~/Library/Saved Application State/com.tidal.desktop.savedState",
  ]
end

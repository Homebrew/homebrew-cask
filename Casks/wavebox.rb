cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.115.14.2"
  sha256 arm:   "090fda53b7b1270ec168ee7df32d6043ae8ffb3958486022f4c9dc1198bf0b9f",
         intel: "480d0cf78825d45a005db90d0de8c2c527bcf8e9bd7dbf506ce57beb1d80be11"

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

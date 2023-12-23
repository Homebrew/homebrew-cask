cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.120.17.2"
  sha256 arm:   "716e47a587cc896cc8a9ff584bb5c3a65b4ec83f91ecde62d7b2bc4c6e61017e",
         intel: "2324f632a05b6be06b89736f79914338e7276ffc9b03cc3be0a527d10f5ef8c6"

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

cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.112.6.2"
  sha256 arm:   "9168d50af11cc8740b4c8204efea2824760bc98beb9bf563d46c7f1dfed54e4c",
         intel: "a148c90e03b0cf8cf4b079a1f25f4359f569899bb39104c628f41a7f4ccebae0"

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

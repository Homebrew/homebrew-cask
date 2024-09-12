cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.128.7.2"
  sha256 arm:   "43c5b729b438f2307d05d5f1aa98e26fdc282caab72cd39aaa59e874c0e9a4d4",
         intel: "2d9aca45c7e04684deccbc91ac82351ab11ae3a4e094e48a40afa93f70cf9ec0"

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

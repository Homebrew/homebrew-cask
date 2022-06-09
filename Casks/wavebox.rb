cask "wavebox" do
  arch = Hardware::CPU.intel? ? "mac" : "macarm64"

  version "10.102.12.2"

  if Hardware::CPU.intel?
    sha256 "6bb5b000fa8f45c4c6df72f05d5add33e110f4912112e29344817ce221f02d84"
  else
    sha256 "25844cfcb9d82e1d4251ab96ca3d5bfe937142cea4ada5363aa684ed0bc1bbb4"
  end

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

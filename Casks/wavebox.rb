cask "wavebox" do
  version "10.93.9.2"

  if Hardware::CPU.intel?
    sha256 "59e37ebc5fd30045a9509df9d4d2b5317ff33ab9f4869813067c8e93f2b2edc8"

    url "https://download.wavebox.app/stable/mac/Install%20Wavebox%20#{version}.dmg",
        verified: "download.wavebox.app/"
  else
    sha256 "4ccd899ef70834fa864c882e900ac05ed5d3b468215e93c86d92b5c66fa62b03"

    url "https://download.wavebox.app/stable/macarm64/Install%20Wavebox%20#{version}.dmg",
        verified: "download.wavebox.app/"
  end

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

cask "wavebox" do
  version "10.0.407.2"
  sha256 "f110633dda9b31a00e9b6c1b4f9cadc7f30948cb48872ec2e3fd4af9587bdf2c"

  url "https://download.wavebox.app/stable/mac/Install%20Wavebox%20#{version}.dmg",
      verified: "download.wavebox.app/"
  name "Wavebox"
  desc "Web browser"
  homepage "https://wavebox.io/"

  livecheck do
    url "https://download.wavebox.app/stable/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

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

cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.104.14.2"

  on_intel do
    sha256 "5dffdce0206e62fc3fd62078578f0bb04366d87cb85250150b4d02499079eb25"
  end
  on_arm do
    sha256 "573470375f8b046c220fd4b897086996dbd4d743f0c3141f4b3c4bba4aa3593f"
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

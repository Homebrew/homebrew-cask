cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.104.7.2"

  on_intel do
    sha256 "0a18ef2124f999fc5f7f0878408865cd6aa01a1386603eba1a5064a5107421d4"
  end
  on_arm do
    sha256 "eba0a22d5f3b1785de79e97605312e853b5863c8206d64a4d7f936f552476dd9"
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

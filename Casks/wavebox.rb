cask "wavebox" do
  version "10.0.542.2"

  if Hardware::CPU.intel?
    sha256 "c7e24af19dbca9d02bb3eb4b87013acba9acd59f61c4cbf6ce115e8048dcd04e"

    url "https://download.wavebox.app/stable/mac/Install%20Wavebox%20#{version}.dmg",
        verified: "download.wavebox.app/"
  else
    sha256 "68e415435b3ef0046289bb5a50016497cbff9d22cdf6d0d3e2ae17ebc3c91994"

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

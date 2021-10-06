cask "wavebox" do
  version "10.94.17.2"

  if Hardware::CPU.intel?
    sha256 "327fdd21eae8d25bef7b49d7d845c2f4f33f983564776cc7035fa780a50b4b64"

    url "https://download.wavebox.app/stable/mac/Install%20Wavebox%20#{version}.dmg",
        verified: "download.wavebox.app/"
  else
    sha256 "d2b502f41140a63f515cedcdd458cd97a86f90f36e56408227c980cc46f95a84"

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

cask "wavebox" do
  version "10.92.21.2"

  if Hardware::CPU.intel?
    sha256 "6f4045a4781f9c1e31f33e8b5f2085c8e1f3a92c689b44e44aef47d3b588d0b9"

    url "https://download.wavebox.app/stable/mac/Install%20Wavebox%20#{version}.dmg",
        verified: "download.wavebox.app/"
  else
    sha256 "fb994b6614ece20ef10f6b67e88888d6d94242c670a48043b5e68abdb570578c"

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

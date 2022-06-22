cask "wavebox" do
  arch = Hardware::CPU.intel? ? "mac" : "macarm64"

  version "10.103.5.2"

  if Hardware::CPU.intel?
    sha256 "2d8c4078fdf731a4b6695af32308913897d1e8e08535ed6b3189de96c538cc75"
  else
    sha256 "789e6c2c2483d3f6f46edcbae397e7ca6a99450684f6f7ac1a9e7f28798acfb6"
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

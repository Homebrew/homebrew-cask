cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.131.12.2"
  sha256 arm:   "2b64f0c5809a6536f4963507ed419b953b8e926a293224aeb058c9866db27ae2",
         intel: "d34aa5fad59df2ce65e5ad8f1938f7e8376a2de9faec6e8f7be162509b37ef2b"

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

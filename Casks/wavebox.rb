cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.106.2.2"
  sha256 arm:   "c21a37521d6dbac5c1d55a853f2ef095c7c8bbeb8b1269b1abbe4c470f8ee7f7",
         intel: "d2ca43ccdc5d9a3102449619835b5073391ab1f7c6a55003eacb20a0ff2bfa2e"

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

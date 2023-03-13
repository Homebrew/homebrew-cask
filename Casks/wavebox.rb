cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.111.15.2"
  sha256 arm:   "a9985eabec56f7dc19c98e89c07d7acd73f31229704ef4f9bb4807f1b04e73d4",
         intel: "550272a2544fac2dd7795ee5a9944019241cf9c39b27c240b22080cf0155c5b5"

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

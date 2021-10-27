cask "wavebox" do
  arch = Hardware::CPU.intel? ? "mac" : "macarm64"

  version "10.94.24.2"

  url "https://download.wavebox.app/stable/#{arch}/Install%20Wavebox%20#{version}.dmg",
      verified: "download.wavebox.app/"
  if Hardware::CPU.intel?
    sha256 "ed0e751ce2474019ec045b8b7f5537be34c3289a32e591f0e3a9dbf7b95ae3d0"
  else
    sha256 "82c8474e80147f88ea3aeddea4acd2293ff64e9d24bcfd8d7c3202fef38eaecc"
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

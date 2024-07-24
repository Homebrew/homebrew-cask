cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.126.22.2"
  sha256 arm:   "8a120c4f1840dce39ca4f4151eb4d6d5c8e3729a6e339313b16d5adfaca67fb8",
         intel: "8c4accd7063f2415794aa956fd226591b7b31a3efe0ba2a08d6d12c6d1c05027"

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

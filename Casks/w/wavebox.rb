cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.122.24.2"
  sha256 arm:   "8815ec22ea05aeec0f5474fa74b42202a885128ff6310beee66e02ba52167f14",
         intel: "6c5e0ebfdc7ccffed6e9f90973c5a5a0fe84db304a9e3d3d91172423fd0a7164"

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

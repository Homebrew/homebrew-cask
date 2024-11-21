cask "wavebox" do
  arch arm: "macarm64", intel: "mac"

  version "10.131.15.2"
  sha256 arm:   "b0ca879f92a4e69112e2f2f9444beca640d92092ce30a565ea0c5cfd089ee12d",
         intel: "cb6623a111bc00ea1085abb14681feeae881e1bf0e61ffb5d9ba88d96d4e9a4a"

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

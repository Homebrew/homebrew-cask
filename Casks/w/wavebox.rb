cask "wavebox" do
  arch arm: "arm64"

  version "149.2.103.2"
  sha256 arm:   "5dfb4f0159e7b62fc550ed15f0d3e548adf0e71fefc0694166d0d50771c1e951",
         intel: "71a8f8dbf75d34fda9ba0d4f8b9fd191373ed3075f69790d6b13df53308d7aec"

  url "https://download.wavebox.app/stable/mac#{arch}/Wavebox_#{version}.zip",
      verified: "download.wavebox.app/"
  name "Wavebox"
  desc "Web browser"
  homepage "https://wavebox.io/"

  livecheck do
    url "https://download.wavebox.app/stable/mac#{arch}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

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

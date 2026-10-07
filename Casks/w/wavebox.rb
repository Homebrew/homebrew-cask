cask "wavebox" do
  arch arm: "arm64"

  version "155.3.12.2"
  sha256 arm:   "135df9c5436bef6f1f0615f4af30852cc7fb871dcdbc77b3c639e2d0d683a26c",
         intel: "5998145d17f0af4a113faec6b2e76b93b9fc64dbfddfeca461338301ace06581"

  url "https://download.wavebox.app/stable/mac#{arch}/Wavebox_#{version}.zip"
  name "Wavebox"
  desc "Web browser"
  homepage "https://wavebox.io/"

  livecheck do
    url "https://download.wavebox.app/stable/mac#{arch}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

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

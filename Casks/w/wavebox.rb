cask "wavebox" do
  arch arm: "arm64"

  version "153.2.204.2"
  sha256 arm:   "6ec7242e0ea799731808b1e5fe553db9f46e53e702f9192f9f7464c1ff301dd2",
         intel: "668bf38e8dd55bd5d61521444513ffcaa4968240a5b994efbb74b65099421a18"

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

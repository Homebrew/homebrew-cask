cask "wavebox" do
  arch arm: "arm64"

  version "157.3.32.2"
  sha256 arm:   "460065a8cf1b1caf68070a14eb46c7db72fab288f2bf36651b4e9248681eb735",
         intel: "4f64f7a072e164fef67da45fe94fcb54267c1c826c671fba58e73dc55039301b"

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
    "~/Library/HTTPStorages/com.bookry.wavebox",
    "~/Library/Preferences/com.bookry.wavebox.plist",
    "~/Library/Saved Application State/com.bookry.wavebox.savedState",
  ]
end

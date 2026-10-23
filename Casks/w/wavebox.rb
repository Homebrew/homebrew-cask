cask "wavebox" do
  arch arm: "arm64"

  version "156.3.20.2"
  sha256 arm:   "7d874398f1f7ef4b2295d16816fa1ca213ed396a6b8b8caf8e2b7de4ba545537",
         intel: "690103f05890dbd870ba038451d58d15c063022d02764c8af24a240908404d21"

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

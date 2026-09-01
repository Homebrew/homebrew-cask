cask "wavebox" do
  arch arm: "arm64"

  version "152.2.174.2"
  sha256 arm:   "7319a724cc1557b7dc2fbe60b1ab27e57c5f686053633b3c2274bc4fc3c75032",
         intel: "b61271ef9d6c7be10f90dcbdd7b97710ce859f1b4cdb253dca906d0fc2ce9b87"

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

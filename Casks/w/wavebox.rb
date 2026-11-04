cask "wavebox" do
  arch arm: "arm64"

  version "157.3.25.2"
  sha256 arm:   "73a441204a2f43db105a0ff4a33b7e2cede24b4198ffeac6d4cf41fc0ec3eb4c",
         intel: "0131cb318226c12b02d858c157e9665354df89700bc23d1390cfbe5faabdda2e"

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

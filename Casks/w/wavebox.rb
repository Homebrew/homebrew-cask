cask "wavebox" do
  arch arm: "arm64"

  version "10.143.16.2"
  sha256 arm:   "ca9fbb1b8a061595d5111ce66ce81734d080e8177073256133fe353d1b6a6786",
         intel: "1bb2f06e881cdd130e5b3a39d30accc811eacdba2940d3cd0cf4494970a14877"

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
  depends_on macos: ">= :monterey"

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

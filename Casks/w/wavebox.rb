cask "wavebox" do
  arch arm: "arm64"

  version "156.3.22.2"
  sha256 arm:   "a266d4e809dd9fbba4afeaf0f2ec259deb3eef76deccf9005974f61aa97ae77a",
         intel: "e43b089307a17cb2dda67e0e5dd28baecb8c4fdb40541eceaab2ebe8c2f54bc2"

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

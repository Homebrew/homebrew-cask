cask "wavebox" do
  arch arm: "arm64"

  version "10.139.23.2"
  sha256 arm:   "3590981e1d8f2251d7e60baec204b5360a437979904822d3554b9407fceddba3",
         intel: "6cdb07e1df445f64bc4b3b5d9787c149397da1c7f569ccca38e3380f7d000492"

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
  depends_on macos: ">= :big_sur"

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

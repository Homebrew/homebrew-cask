cask "wavebox" do
  arch arm: "arm64"

  version "153.2.196.2"
  sha256 arm:   "dd65ed9d04e975e01c69a64c513f0dfc42f426d106677673fb9c83a0cc66e153",
         intel: "e4849e887c75a2e7a6b5523d6f297d6d4d6be4ae4f1df85fc1a7da7b5d58d7d3"

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

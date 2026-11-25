cask "wavebox" do
  arch arm: "arm64"

  version "158.3.36.2"
  sha256 arm:   "88b4b72c07135a54825963b7381794095a37fbc223c12fadca061fc980308a02",
         intel: "788f2fb5134d1b8605d7be70d03c35e403c91fb70096a24174a7e0aa1cbab678"

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

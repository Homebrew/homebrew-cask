cask "wavebox" do
  arch arm: "arm64"

  version "154.3.2.2"
  sha256 arm:   "1682b7df4692b75f22eb602dd25a742828f7cdffea05b3759e8bc6bdc933717e",
         intel: "d99a5c6e7dcfb673b26334ae07079889bbe8b151e0f83699bacd58c7db02d8b2"

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

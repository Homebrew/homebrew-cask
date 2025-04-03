cask "wavebox" do
  arch arm: "arm64"

  version "10.135.5.2"
  sha256 arm:   "78099e131f39c91d2508cffdb89b532781709e0ed84aff12c801f39d6f37bf2f",
         intel: "c7c79b720d189d966a6e0555beed2ffca1b20198f10cde5ed94ea525032dbf8c"

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

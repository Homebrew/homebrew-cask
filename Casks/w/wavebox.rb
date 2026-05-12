cask "wavebox" do
  arch arm: "arm64"

  version "148.2.4.2"
  sha256 arm:   "e9d4cf0924085862cca4c82c68f685f307f1fd3d05820ebc7a07a3be401c1eec",
         intel: "940621747599481d61ee8712ee0adbc81c9af0bee7bc77b48eaea60140ba3437"

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
  depends_on macos: :monterey

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

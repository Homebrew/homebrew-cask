cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "5.0.2"
  sha256 arm:   "cd890f26cb69bb27732d2c7a82c68df3f01366d5b72109674100c46e24e62fdc",
         intel: "7f42e9065ea5fb636d6f13df48265bb2c4c4f3ae54d912f04a41929fc230c520"

  url "https://github.com/sn4k3/UVtools/releases/download/v#{version}/UVtools_osx-#{arch}_v#{version}.zip"
  name "UVtools"
  desc "MSLA/DLP, file analysis, calibration, repair, conversion and manipulation"
  homepage "https://github.com/sn4k3/UVtools"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "UVtools.app"

  zap trash: [
    "~/Library/Preferences/com.UVtools.plist",
    "~/Library/Saved Application State/com.UVtools.savedState",
  ]
end

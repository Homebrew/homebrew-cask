cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "5.0.1"
  sha256 arm:   "f72dc3a85f6924db08feb4429dc13b7ff00cd7795b4da7dd2c34b94de9ed086f",
         intel: "6544a3d449f3d5264531351a13aafb876378c5705fb0249aa3a1a7c769e657a5"

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

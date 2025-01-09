cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "5.0.5"
  sha256 arm:   "3017a4bb8b5c3a8739cf2dca7ced7e32b1adb3bb87853b50559de5610e473afc",
         intel: "a6159b7891345431c823a82bccf923b72988e6e43706f9dcdf1f8922201b2fb6"

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

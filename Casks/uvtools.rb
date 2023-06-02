cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.14.0"
  sha256 arm:   "1ac607418eafc1d38a310cef7b66dfbfd3d94a4bde0aa839385be419b42227e9",
         intel: "7499ffc081f009a88f45997eab0937cdb0223ed0fe4731ea8167130af638b73e"

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

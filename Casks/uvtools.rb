cask "uvtools" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.4.2"
  sha256 "6ef3effafe23d46f848dd7f31b21a86bc757cd527b22268c99811d8b8a3aea95"
  
  url "https://github.com/sn4k3/UVtools/releases/download/v#{version}/UVtools_osx-#{arch}_v#{version}.zip"
  name "UVtools"
  desc "MSLA/DLP, file analysis, calibration, repair, conversion and manipulation"
  homepage "https://github.com/sn4k3/UVtools"

  app "UVtools.app"

  zap trash: [
    "~/Library/Preferences/com.UVtools.plist",
    "~/Library/Saved Application State/com.UVtools.savedState",
  ]
end

cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "4.0.2"
  sha256 arm:   "f432c44007553d205acb9f36d5601b0b0a2581f8e8f01425b4bf258f2436e16f",
         intel: "9057ca121eb7044946cbe7a87e60dde88164fd9023b072f09b2e9350a4fdf6fb"

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

cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "6.0.1"
  sha256 arm:   "b92dacc06ccb6a3fb240c3cc97a21e0b34b841262d8f3f67a91181628b0862f6",
         intel: "9b2a9ea089cbf24f6542609ba02c6c39010cdc37c567c02d0aba1ec7b5e71334"

  url "https://github.com/sn4k3/UVtools/releases/download/v#{version}/UVtools_osx-#{arch}_v#{version}.zip"
  name "UVtools"
  desc "MSLA/DLP, file analysis, calibration, repair, conversion and manipulation"
  homepage "https://github.com/sn4k3/UVtools"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true

  app "UVtools.app"

  zap trash: [
    "~/Library/Preferences/com.UVtools.plist",
    "~/Library/Saved Application State/com.UVtools.savedState",
  ]
end

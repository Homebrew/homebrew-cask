cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "6.0.2"
  sha256 arm:   "3e1c57157c967b2d768efb286dff4ef4e36c8f960d2853147d25709dbc856d59",
         intel: "390edd9e9565b5b37849a221b38d5e128564976e26b73c5deb6ced723025df96"

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

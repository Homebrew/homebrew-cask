cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "4.2.1"
  sha256 arm:   "fce146c475f77104c809a23960eb9d0a4915e3fe3c349831b13e38a3b8c4d2cb",
         intel: "cf274e176e2e7cb1fd9819bd2099eb5da485d3552c210966c693541b54aa7b40"

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

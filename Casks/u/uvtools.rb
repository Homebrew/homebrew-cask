cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "6.0.3"
  sha256 arm:   "39028cec6cb998a56161bc4127e089f90d71265fda235e3e9ef4c84e53a38f3b",
         intel: "2ffa29cf18fb88cf5b6fe646954de6c6c26fbd797a0483b67ccf35612865fcc3"

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

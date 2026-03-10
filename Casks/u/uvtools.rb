cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "6.0.0"
  sha256 arm:   "e5853cfe2a0947666cdd707bce3f105ede8d438cd931b3e292952fe3047c879b",
         intel: "01c23d6433a93bbee466d23a09b34ea9ac554d3a8f0c5b03970a7afe5ea0b783"

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

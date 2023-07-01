cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.15.1"
  sha256 arm:   "28d71721d1b1628d263ccd31387ff2914bb5798a075a0dd07c9c2179c97acee0",
         intel: "c7d029aa9bc88d7611510370852bb3ba3b22ac7910e1aab0597909a643d0f97c"

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

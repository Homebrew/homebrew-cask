cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "4.2.4"
  sha256 arm:   "9aa4d29ee39e952f60554b054ba6f3224a04bffcde32eb32c2ec4508f89de0f2",
         intel: "e8c334fe22d3f0d854df2e7318dcc3fc265180fd446e18bdde418f74d291dd44"

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

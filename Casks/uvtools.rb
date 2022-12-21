cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.9.3"
  sha256 arm:   "48ea27cd559328f89292648844aba3f90ffb26c9e0fdd69da47da84b377cde66",
         intel: "775aeb95a278784d9da367d97d206147f97f21d6989514aad3472c87d7f7961b"

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

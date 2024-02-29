cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "4.2.3"
  sha256 arm:   "180baf70a6c2c07e3270814bc907ef07336b75db9dfad0d4c0236634c35595c9",
         intel: "344ef1d7385d338963fd1e45a3e515b86097fc92e413e1d0c7468f8ef51248ba"

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

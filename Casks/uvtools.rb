cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.13.4"
  sha256 arm:   "2d202574308ed64a3f5fdc7fca41379588ffc97bf03ec2af707607f3c5a277f0",
         intel: "439f7c8076eb0dd5e7e59044d85a460317538ec5c10aaba61bac94f9a8ad49ad"

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

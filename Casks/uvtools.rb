cask "uvtools" do
  version "3.3.2"
  sha256 "446a9cd31e82220fd1a5b374adc4fd747aa33ce6034ab4eb778065adb31143b8"

  url "https://github.com/sn4k3/UVtools/releases/download/v#{version}/UVtools_osx-x64_v#{version}.zip"
  name "UVtools"
  desc "MSLA/DLP, file analysis, calibration, repair, conversion and manipulation"
  homepage "https://github.com/sn4k3/UVtools"

  app "UVtools.app"

  zap trash: [
    "~/Library/Preferences/com.UVtools.plist",
    "~/Library/Saved Application State/com.UVtools.savedState",
  ]
end

cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.6.2"
  sha256 arm:   "8582eefc63c96b5eddeab5a541444ab322c531714d361ff57d63512e01dbc7a8",
         intel: "11c701d1d1001f9a2c0237219decef8230973976f1f10f304ea44a0d18769a0e"

  url "https://github.com/sn4k3/UVtools/releases/download/v#{version}/UVtools_osx-#{arch}_v#{version}.zip"
  name "UVtools"
  desc "MSLA/DLP, file analysis, calibration, repair, conversion and manipulation"
  homepage "https://github.com/sn4k3/UVtools"

  app "UVtools.app"

  zap trash: [
    "~/Library/Preferences/com.UVtools.plist",
    "~/Library/Saved Application State/com.UVtools.savedState",
  ]
end

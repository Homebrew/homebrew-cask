cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.14.4"
  sha256 arm:   "1bbeb2cf3b25b3735051d259e8eadc084385a4460d85c00207dac0dcfb02c593",
         intel: "f925882c4fdeaf05981fe30b6dec96de6c869018b54257089cf9b3d7a2acede6"

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

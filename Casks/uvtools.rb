cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.12.1"
  sha256 arm:   "ccf85dcbfd6123640470009e496d16220e46413147b808b12185c26bf53c1950",
         intel: "148aa672493c703ca0ca0f0906584527f205f8dab097a840df31559b80d477c9"

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

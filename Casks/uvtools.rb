cask "uvtools" do
  version "2.26.0"
  sha256 "91583dd07c4e8585075f228ea06de59b77b1d46df7af7b8dc98017bd1ee137fb"

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

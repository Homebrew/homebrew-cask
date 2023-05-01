cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.13.1"
  sha256 arm:   "dc4fe6d5bf0d06268f57b512c92e5a01aaf3cf6d62560371c8b8c8ed193bbc5b",
         intel: "61dcebf2048c86f9f37fcfa2b439f681a145c6bf23aa4e66c49216276d0e2cc9"

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

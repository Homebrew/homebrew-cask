cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.15.0"
  sha256 arm:   "0b6b5da69768ed8f0e22ac7ca54f5ca18719323dd085ce7daf32b0fbd0c3da5b",
         intel: "c14e356cd813ba8ea0ab4ebf521fbe7fa115121d8807ae4ec347826baa4f3237"

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

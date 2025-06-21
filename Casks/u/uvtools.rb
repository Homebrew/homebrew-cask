cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "5.1.3"
  sha256 arm:   "20691c8072f5f0a6ea80f4600e4f35602965481e8d7c8a3c5c703dcd39ed6e5f",
         intel: "5a3d79d941a8ffde39b35a4f43ca1f50805100836e7c20349e4488bd0cb3bde5"

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

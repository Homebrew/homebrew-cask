cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.14.2"
  sha256 arm:   "abb29a4ec11a920d7a984e983e4c8caa471446bb54ac3f59e05aed3a9505fb2c",
         intel: "8795af067a64e9326f97690517bbd8f16c22be1fa418f16a5478c642c1aaaf0c"

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

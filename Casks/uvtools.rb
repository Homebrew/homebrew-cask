cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.10.0"
  sha256 arm:   "a0d047bbe3171e6093d19d0b174c1ddb1020e8f70f44b96d8015277910de80f5",
         intel: "a72c2ecf18becd895d6e61abaaf1764c563c8b6702ef45dae4e0857a352c12ee"

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

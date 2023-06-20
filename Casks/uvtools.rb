cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.14.3"
  sha256 arm:   "b2d644ddb86b5293df002369ec2190026453c0da7274a5f81735381b854236a0",
         intel: "46944f2385cfc591be0bcda863d5ae0e2c6075a0875b5a1378466fd84c72a073"

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

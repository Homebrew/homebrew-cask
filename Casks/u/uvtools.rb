cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "4.4.0"
  sha256 arm:   "d22d86f2c65dc9de1605c351d06ccbcf1e294fe51efe4f3dfb730bd33a24f02a",
         intel: "62680000f3f726a22c6b819774493a1862ff0934e6a64298c9b0a9ec423f3cd9"

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

cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.6.3"
  sha256 arm:   "612ca703c223bd929ebf375404ba23e70aa6957abad58e765f2c8965a8aa8859",
         intel: "83c614f808a75c97407d0f549fb7ccc01d1983d48d77f6091d33bf0bf761aaa0"

  url "https://github.com/sn4k3/UVtools/releases/download/v#{version}/UVtools_osx-#{arch}_v#{version}.zip"
  name "UVtools"
  desc "MSLA/DLP, file analysis, calibration, repair, conversion and manipulation"
  homepage "https://github.com/sn4k3/UVtools"

  app "UVtools.app"

  zap trash: [
    "~/Library/Preferences/com.UVtools.plist",
    "~/Library/Saved Application State/com.UVtools.savedState",
  ]
end

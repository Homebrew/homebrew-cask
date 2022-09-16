cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.6.4"
  sha256 arm:   "da97672ab910b861de98d335b7b33202b99247c952ebeb81cd809bd2550cce8e",
         intel: "5f7f9811735b19ea4eae9dc80acf94918be6ea3de122d6fb8cab994538d9f3ed"

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

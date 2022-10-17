cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.7.1"
  sha256 arm:   "ca6731983e3eed44896eea61b643a6c5551707d29e9f03a129c0bcf362234719",
         intel: "ddcc9ecf84c967f7d552e701df18da8e6927f35aeada5bac1aef24e2ef808d03"

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

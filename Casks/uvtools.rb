cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.6.8"
  sha256 arm:   "29da89ff77445a15ba77830a74669b2fb0f69f4908f8de3761b795f7757bf470",
         intel: "642a1e669f5030a441cc808a5ce951c7c24e8b33482da00d3a2daeef06f963b3"

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

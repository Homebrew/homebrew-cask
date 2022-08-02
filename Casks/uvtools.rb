cask "uvtools" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.5.6"

  if Hardware::CPU.intel?
    sha256 "6d5a70f2e8a274a6135718a6bf943f52958a604429168369cb9f9243c5c1e9a8"
  else
    sha256 "2d7f7587651311386a7eb0fb10922b4edee47aef2f93f4ad97c8cf4912fd9874"
  end

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

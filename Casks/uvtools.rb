cask "uvtools" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.5.4"

  if Hardware::CPU.intel?
    sha256 "016ec54a9618a6dd675973f1821e38886147b7b1cf450f9a76751076fb65121f"
  else
    sha256 "a90c5895984e8ac33b666805ca6900a09c18ce81f55e0f716a043cfb0c5e741d"
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

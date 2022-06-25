cask "uvtools" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.5.2"

  if Hardware::CPU.intel?
    sha256 "119f6fda3e754964b789a3c4914b1ab10216b4b0faf978023d7b50a6e16d283e"
  else
    sha256 "91712b216dd82aa72a55f370f12022fc2b22070b3fe383327be0683317250b4e"
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

cask "uvtools" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.5.0"

  if Hardware::CPU.intel?
    sha256 "f0a1779d5946b5075d69bc1b6b5887d1a9d87437e6ddafd395956779d1110cf2"
  else
    sha256 "2b5259425eb121c02fc792c8a29db95ae36a0dad59461af75232e0e21e35bb99"
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

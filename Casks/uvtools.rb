cask "uvtools" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.5.1"

  if Hardware::CPU.intel?
    sha256 "fd0a666b49d4ae9d8ebcaeb93c508a37d62148e4ddaa5e3f9e8fbff688088e75"
  else
    sha256 "6f1ea56f74faa2637da6c5349b9e2fa135ebc2c002d24ae67f9cdac51d49f72c"
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

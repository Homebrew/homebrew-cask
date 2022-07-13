cask "uvtools" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.5.3"

  if Hardware::CPU.intel?
    sha256 "bad7db644f27779680c90cc9f1d40cd3c69d79675450baf0941b546bdc9aebbe"
  else
    sha256 "5d9a0d7a812eb13ab2f4e2b0d47fbd02fb7a271afbbf5768207627f2430b46ff"
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

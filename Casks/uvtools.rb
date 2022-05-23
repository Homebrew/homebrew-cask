cask "uvtools" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.4.3"

  if Hardware::CPU.intel?
    sha256 "b2426768d2ffc726daa48c6ad1fecdffec70b9a1fc530de5d3f3e498bf75878f"
  else
    sha256 "7c89fe56ab2b72f2e54d510fbd40baed34b3925aa5e5a989064541dc49c676d2"
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

cask "uvtools" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.5.5"

  if Hardware::CPU.intel?
    sha256 "ceef9ca70b2e7dfaab97abfbe1f9b28dd8983e160cbb789037e2402180705ee1"
  else
    sha256 "792efa831d8106e80fc440d5c9f21137f5edde456b236ad91fb6eba9af9fdbb7"
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

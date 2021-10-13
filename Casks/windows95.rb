cask "windows95" do
  # NOTE: "95" is not a version number, but an intrinsic part of the product name
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.3.0"

  url "https://github.com/felixrieseberg/windows95/releases/download/v#{version}/windows95-darwin-#{arch}-#{version}.zip"
  if Hardware::CPU.intel?
    sha256 "dc89096e83b8e494390715e502701f3f35d4b19c45635e8eab9ac8036169b904"
  else
    sha256 "4f4245cded00af8b40a0a150fc36a2da239a55d2a1711090e80b9ae8fa9c1283"
  end

  name "Windows 95"
  desc "Windows 95 in Electron"
  homepage "https://github.com/felixrieseberg/windows95"

  auto_updates true

  app "windows95.app"
end

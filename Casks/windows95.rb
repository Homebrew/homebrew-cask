cask "windows95" do
  # NOTE: "95" is not a version number, but an intrinsic part of the product name
  version "2.3.0"
  sha256 "dc89096e83b8e494390715e502701f3f35d4b19c45635e8eab9ac8036169b904"

  url "https://github.com/felixrieseberg/windows95/releases/download/v#{version}/windows95-darwin-x64-#{version}.zip"
  appcast "https://github.com/felixrieseberg/windows95/releases.atom"
  name "Windows 95"
  homepage "https://github.com/felixrieseberg/windows95"

  auto_updates true

  app "windows95.app"
end

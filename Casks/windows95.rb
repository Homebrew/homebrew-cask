cask "windows95" do
  # note: "95" is not a version number, but an intrinsic part of the product name
  version "2.2.2"
  sha256 "70deb71aa540fceeddec8815f308710f9ca991bd78cf84d8512aa8035d781c2c"

  url "https://github.com/felixrieseberg/windows95/releases/download/v#{version}/windows95-darwin-x64-#{version}.zip"
  appcast "https://github.com/felixrieseberg/windows95/releases.atom"
  name "Windows 95"
  homepage "https://github.com/felixrieseberg/windows95"

  auto_updates true

  app "windows95.app"
end

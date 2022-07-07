cask "windows95" do
  # NOTE: "95" is not a version number, but an intrinsic part of the product name
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.0.0"

  url "https://github.com/felixrieseberg/windows95/releases/download/v#{version}/windows95-darwin-#{arch}-#{version}.zip"
  if Hardware::CPU.intel?
    sha256 "182f2eadf1c32159351e383130f4945ee87238ee9f6417ef5291d1a8f93be255"
  else
    sha256 "9197c0c3e7774f8cd9b57a87fd7ac5980cc0f0fae8ba944052f48ef4905996d0"
  end

  name "Windows 95"
  desc "Electron Windows 95"
  homepage "https://github.com/felixrieseberg/windows95"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "windows95.app"

  zap trash: [
    "~/Library/Application Support/windows95",
    "~/Library/Caches/com.felixrieseberg.windows95",
    "~/Library/Caches/com.felixrieseberg.windows95.ShipIt",
    "~/Library/Preferences/com.felixrieseberg.windows95.plist",
    "~/Library/Saved Application State/com.felixrieseberg.windows95.savedState",
  ]
end

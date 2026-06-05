cask "ueli" do
  arch arm: "-arm64"

  version "9.28.1"
  sha256 arm:   "338bed9fd3665032e2aaf7490ebc3ef79de68445c1f060a0b3b7ec01e286cd94",
         intel: "63348a9d4e4d7682f422dd57d5a7c017d65e1687480d9a2d71b1559da6868080"

  url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/Ueli-#{version}#{arch}.dmg",
      verified: "github.com/oliverschwendener/ueli/"
  name "Ueli"
  desc "Keystroke launcher"
  homepage "https://ueli.app/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "ueli.app"

  uninstall quit: "ueli"

  zap trash: [
    "~/Library/Application Support/ueli",
    "~/Library/Logs/ueli",
    "~/Library/Preferences/com.electron.ueli.plist",
  ]
end

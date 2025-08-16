cask "ueli" do
  arch arm: "-arm64"

  version "9.25.1"
  sha256 arm:   "b33a4957fc981ba5a6f7b0295a2fd35b6d90b93fcc0ef0e0e58e43849166d1cc",
         intel: "b3f953b839c72ef1704f24c4516d3465094fcc00d3d2b1c9b3865397b2bfc4c8"

  url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/Ueli-#{version}#{arch}.dmg",
      verified: "github.com/oliverschwendener/ueli/"
  name "Ueli"
  desc "Keystroke launcher"
  homepage "https://ueli.app/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "ueli.app"

  uninstall quit: "ueli"

  zap trash: [
    "~/Library/Application Support/ueli",
    "~/Library/Logs/ueli",
    "~/Library/Preferences/com.electron.ueli.plist",
  ]
end

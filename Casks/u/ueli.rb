cask "ueli" do
  arch arm: "-arm64"

  version "9.27.1"
  sha256 arm:   "d8465098f5650fb63625c05619e6bddcac81cc4b8ae8bea9d736d29325199217",
         intel: "765371fda9f71ad3b078eefbecf38dd9509e0bc945fed235ea18f7753d4c34f1"

  url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/Ueli-#{version}#{arch}.dmg",
      verified: "github.com/oliverschwendener/ueli/"
  name "Ueli"
  desc "Keystroke launcher"
  homepage "https://ueli.app/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "ueli.app"

  uninstall quit: "ueli"

  zap trash: [
    "~/Library/Application Support/ueli",
    "~/Library/Logs/ueli",
    "~/Library/Preferences/com.electron.ueli.plist",
  ]
end

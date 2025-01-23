cask "ueli" do
  arch arm: "-arm64"

  version "9.15.0"
  sha256 intel: "d461c108f6496b7a4573dc7511dca730e2e65389bb539885f3795ab30b59e1b4",
         arm:   "27ae051e40f91256a51079a09bf9951468e39fc4428f9bef7890b1cce5f3150f"

  url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/Ueli-#{version}#{arch}.dmg",
      verified: "github.com/oliverschwendener/ueli/"
  name "Ueli"
  desc "Keystroke launcher"
  homepage "https://ueli.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "ueli.app"

  uninstall quit: "ueli"

  zap trash: [
    "~/Library/Application Support/ueli",
    "~/Library/Logs/ueli",
    "~/Library/Preferences/com.electron.ueli.plist",
  ]
end

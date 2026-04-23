cask "ueli" do
  arch arm: "-arm64"

  version "9.28.0"
  sha256 arm:   "536447c319fde299e79e394a6026a88c4da4ae87c805f7f6cb7a49a7f0a3a912",
         intel: "cd4c5fcbc87a7543e3d6e0de7ff6e2d9913cf49c47665c8516c076959300fcac"

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

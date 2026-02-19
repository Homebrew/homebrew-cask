cask "ueli" do
  arch arm: "-arm64"

  version "9.27.0"
  sha256 arm:   "7ea9ee6ad019b84cd1638dd1b37b7c409d32e4549167ba930476f6330a582eda",
         intel: "860b843f00b08626c980aa006053110c409835cfc12cb4bfc0b1cad45eb96f29"

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

cask "ueli" do
  arch arm: "-arm64"

  version "9.22.0"
  sha256 intel: "97a5250aac652d124f9bbba79663f0997d7d70f60a863eb3c1ab00655a3a664f",
         arm:   "724473e6287424196f41bb93bc93bc088dd265259617c435cecea0973680bf81"

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

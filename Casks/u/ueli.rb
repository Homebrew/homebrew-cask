cask "ueli" do
  arch arm: "-arm64"

  version "9.19.0"
  sha256 intel: "f8691aaf04d0198f11d307ecc1e790f918b88bf2f78cdf7c8c91f5f7e6650686",
         arm:   "b25b4ea719df38af0f86e0acee12c67842a075564c8c121ea2b09ca19c4de92f"

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

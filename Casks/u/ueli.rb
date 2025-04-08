cask "ueli" do
  arch arm: "-arm64"

  version "9.20.0"
  sha256 intel: "32c8196d7bc92d0bdf4d18ebfe1474db3c1825d32f76d0d4dfba46f0875f05d6",
         arm:   "ca98bed7bea4bb3ff5724342850dfac34ff0e57d024217914fa12f61f83668ac"

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

cask "ueli" do
  arch arm: "-arm64"

  version "9.21.0"
  sha256 intel: "7bc3965dcf61ad016053b9d95d3260c213a8b035ca09a477f0854feb01d81a2c",
         arm:   "5a3b63038267478f638018673986b5638b664e770c8fc833a1709a3ea56826cc"

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

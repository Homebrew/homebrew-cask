cask "ueli" do
  arch arm: "-arm64"

  version "9.3.3"
  sha256 intel: "143a9d53bbd9fef0fd1134e37a524334046bfe47841e4081844acb61c902fd2d",
         arm:   "c7c93be74353a7771b1da69091a9f9158a57d35b4eb5af66bf1c1ea0785f0c21"

  url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/Ueli-#{version}#{arch}.dmg",
      verified: "github.com/oliverschwendener/ueli/"
  name "Ueli"
  desc "Keystroke launcher"
  homepage "https://ueli.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ueli.app"

  uninstall quit: "ueli"

  zap trash: [
    "~/Library/Application Support/ueli",
    "~/Library/Logs/ueli",
    "~/Library/Preferences/com.electron.ueli.plist",
  ]
end

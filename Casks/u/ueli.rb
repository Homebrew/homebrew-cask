cask "ueli" do
  arch arm: "-arm64"

  version "9.0.1"
  sha256 intel: "4c17bdee3365ebd76801fbfbc45e9895119aeff604f53059cba2d930c9ed3b5d",
         arm:   "7e81deb4815f7d9b4904ca02572202ca0d5af6da3f356d49606ead43d72f75cb"

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

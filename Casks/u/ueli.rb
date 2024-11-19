cask "ueli" do
  arch arm: "-arm64"

  version "9.10.0"
  sha256 intel: "6e219927c0b9907cb753e7675ce3f920a24d673691292261859effb3bed46cf1",
         arm:   "a8559640acfa25b434496a8a3f3d9ca76265e5170a50808db9e970354f1e94cd"

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

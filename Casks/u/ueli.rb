cask "ueli" do
  arch arm: "-arm64"

  version "9.3.1"
  sha256 intel: "78e53be3d1e00a890c0ae7645ad7a81ff35f23381dafdcae578dacdbc624426c",
         arm:   "4f0395ec7f4b7112aea8ff4acc1e006c2a2cfb05cac1853acc60e3c316b259c3"

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

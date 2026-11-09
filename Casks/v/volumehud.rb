cask "volumehud" do
  version "4.0.1"
  sha256 "3195e903aeecd1c1c32e8a61ac01ce819613cca854d2056dc14ede97a86cb038"

  url "https://github.com/dannystewart/volumeHUD/releases/download/v#{version}/volumeHUD-#{version}.dmg"
  name "volumeHUD"
  desc "Bring back the pre-Tahoe volume and brightness HUDs"
  homepage "https://github.com/dannystewart/volumeHUD"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "volumeHUD.app"

  uninstall quit:       "com.dannystewart.volumehud",
            login_item: "volumeHUD"

  zap trash: [
    "~/Library/Application Support/volumeHUD",
    "~/Library/Caches/com.dannystewart.volumehud",
    "~/Library/Logs/volumeHUD",
    "~/Library/Preferences/com.dannystewart.volumehud.plist",
    "~/Library/Saved Application State/com.dannystewart.volumehud.savedState",
  ]
end

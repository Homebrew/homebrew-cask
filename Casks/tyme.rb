cask "tyme" do
  version "2020.27,3094"
  sha256 "82489869d0382d01cd5769415964655435c1ea4fc5ad174b3d50be077230ca36"

  url "https://www.tyme-app.com/app/Tyme3.zip"
  name "Tyme 3"
  desc "Time tracking app"
  homepage "https://www.tyme-app.com/"

  app "Tyme.app"

  zap trash: [
    "~/Library/Application Scripts/com.tyme-app.Tyme3-macOS",
    "~/Library/Application Support/com.tyme-app.Tyme3-macOS",
    "~/Library/Caches/CloudKit/com.tyme-app.Tyme3-macOS",
    "~/Library/Caches/com.tyme-app.Tyme3-macOS",
    "~/Library/Containers/com.tyme-app.Tyme3-macOS",
    "~/Library/Group Containers/*.group.com.tyme-app.Tyme3",
    "~/Library/Preferences/3https:/api.tyme-app.com",
    "~/Library/Preferences/com.tyme-app.Tyme3-macOS.plist",
    "~/Library/Saved Application State/com.tyme-app.Tyme3-macOS.savedState",
  ]
end

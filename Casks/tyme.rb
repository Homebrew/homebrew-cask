cask "tyme" do
  version "2022.5,4113"
  sha256 :no_check

  url "https://www.tyme-app.com/app/Tyme3.zip"
  name "Tyme 3"
  desc "Time tracking app"
  homepage "https://www.tyme-app.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

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

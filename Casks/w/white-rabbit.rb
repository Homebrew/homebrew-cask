cask "white-rabbit" do
  version "1.2"
  sha256 :no_check

  url "https://delivery.kadomaru.app/white-rabbit/White%20Rabbit.dmg"
  name "white-rabbit"
  desc "Optimizes SVG files in bulk and wraps them in HTML"
  homepage "https://kadomaru.app/white-rabbit/"

  livecheck do
    url "https://delivery.kadomaru.app/white-rabbit/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sequoia"

  app "White Rabbit.app"

  zap trash: [
    "~/Library/Caches/app.kadomaru.white-rabbit",
    "~/Library/HTTPStorages/app.kadomaru.white-rabbit",
    "~/Library/Preferences/app.kadomaru.white-rabbit.plist",
    "~/Library/WebKit/app.kadomaru.white-rabbit",
  ]
end

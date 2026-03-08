cask "white-rabbit" do
  version "1.3.1"
  sha256 :no_check

  url "https://delivery.kadomaru.app/white-rabbit/White%20Rabbit.dmg"
  name "White Rabbit"
  desc "SVG utility and optimiser"
  homepage "https://kadomaru.app/white-rabbit/"

  livecheck do
    url "https://delivery.kadomaru.app/white-rabbit/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "White Rabbit.app"

  zap trash: [
    "~/Library/Caches/app.kadomaru.white-rabbit",
    "~/Library/HTTPStorages/app.kadomaru.white-rabbit",
    "~/Library/Preferences/app.kadomaru.white-rabbit.plist",
    "~/Library/WebKit/app.kadomaru.white-rabbit",
  ]
end

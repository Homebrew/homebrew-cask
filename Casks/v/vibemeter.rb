cask "vibemeter" do
  version "1.1.0"
  sha256 "0fe8a49e7e93a599351dca2143a2fdcbc2af7c8026ecac1b899458af67d34e35"

  url "https://github.com/steipete/VibeMeter/releases/download/v#{version}/VibeMeter-#{version}.dmg",
      verified: "github.com/steipete/VibeMeter/"
  name "VibeMeter"
  desc "Menu bar app to monitor AI spending"
  homepage "https://www.vibemeter.ai/"

  livecheck do
    url "https://raw.githubusercontent.com/steipete/VibeMeter/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "VibeMeter.app"

  zap trash: [
    "~/Library/Application Scripts/com.steipete.vibemeter",
    "~/Library/Caches/com.steipete.vibemeter",
    "~/Library/Containers/com.steipete.Vibemeter",
  ]
end

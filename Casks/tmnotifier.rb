cask "tmnotifier" do
  version "1.0.7"
  sha256 "9eacd54685c4b14b7dfccc2a57c4bbdb40dc6bbe844a9053c1da7bfa965b94e6"

  url "https://tmnotifier.com/downloads/TMNotifier_#{version}.dmg"
  appcast "https://tmnotifier.com/appcast.xml"
  name "TMNotifier"
  desc "Easy email notifications for Time Machine"
  homepage "https://tmnotifier.com/"

  auto_updates true

  app "TMNotifier.app"

  zap trash: [
    "~/Library/Application Support/TMNotifier",
    "~/Library/Caches/com.apple.helpd/Generated/com.everythingisgray.TMNotifier.help*",
    "~/Library/Caches/com.everythingisgray.TMNotifier",
    "~/Library/Preferences/com.everythingisgray.TMNotifier.plist",
    "~/Library/Preferences/com.everythingisgray.TMNotifier.TMNASLXPC.plist",
  ]
end

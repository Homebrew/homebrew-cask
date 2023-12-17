cask "webrecorder-player" do
  version "1.8.0"
  sha256 "c7ecc7b19c31814a15a1dc5bff41ac899b239877d5968b057b0946b250aedd3a"

  url "https://github.com/webrecorder/webrecorder-player/releases/download/v#{version}/webrecorder-player-#{version}.dmg"
  name "Webrecorder Player"
  homepage "https://github.com/webrecorder/webrecorder-player/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Webrecorder Player.app"

  zap trash: [
    "~/Library/Application Support/Webrecorder Player",
    "~/Library/Preferences/org.webrecorder.webrecorderplayer.helper.plist",
    "~/Library/Preferences/org.webrecorder.webrecorderplayer.plist",
    "~/Library/Saved Application State/org.webrecorder.webrecorderplayer.savedState",
  ]
end

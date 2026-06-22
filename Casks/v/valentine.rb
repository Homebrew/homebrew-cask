cask "valentine" do
  version "1.2"
  sha256 "1c960177eaf9fba9e8039c9e94166996c04287e29a4f5738ba05b81cd2f81f39"

  url "https://github.com/JesusChapman/valentine/releases/download/v#{version}/Valentine_v#{version}_Universal.dmg"
  name "Valentine"
  desc "Elegant native music player with support for synchronized lyrics"
  homepage "https://github.com/JesusChapman/valentine"

  depends_on macos: :tahoe

  app "Valentine.app"

  zap trash: [
    "~/Library/Application Support/dev.jesuschapman.Valentine",
    "~/Library/Preferences/dev.jesuschapman.Valentine.plist",
    "~/Library/Saved Application State/dev.jesuschapman.Valentine.savedState",
  ]
end

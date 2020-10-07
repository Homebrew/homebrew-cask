cask "telegram-desktop" do
  version "2.4.3"
  sha256 "7a94343db376ca52d63970081174a889330b59b81408bce27c858b02f669817c"

  # github.com/telegramdesktop/tdesktop/ was verified as official when first introduced to the cask
  url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/tsetup.#{version}.dmg"
  appcast "https://github.com/telegramdesktop/tdesktop/releases.atom"
  name "Telegram Desktop"
  desc "Desktop client for Telegram messenger"
  homepage "https://desktop.telegram.org/"

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/telegram-desktop-dev"

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "Telegram Desktop.app"

  zap trash: [
    "~/Library/Application Support/Telegram Desktop",
    "~/Library/Preferences/com.tdesktop.Telegram.plist",
    "~/Library/Saved Application State/com.tdesktop.Telegram.savedState",
  ]
end

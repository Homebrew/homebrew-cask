cask "telegram-desktop" do
  version "2.4.0"
  sha256 "549b918019b30fcd71b5f5bccb39b4161d27c9c7d7b00725409e04d9caffb784"

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

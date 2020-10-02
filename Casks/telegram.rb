cask "telegram" do
  version "7.1,206149"
  sha256 "9711a55363cc8fe8f8e61c96078e6cfe8f70acee9a94eb8ccef4db7b6b178a4f"

  url "https://osx.telegram.org/updates/Telegram-#{version.before_comma}.#{version.after_comma}.app.zip"
  appcast "https://osx.telegram.org/updates/versions.xml"
  name "Telegram for macOS"
  desc "Messaging app with a focus on speed and security"
  homepage "https://macos.telegram.org/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Telegram.app"

  zap trash: [
    "~/Library/Application Scripts/ru.keepcoder.Telegram",
    "~/Library/Application Scripts/ru.keepcoder.Telegram.TelegramShare",
    "~/Library/Caches/ru.keepcoder.Telegram",
    "~/Library/Containers/ru.keepcoder.Telegram",
    "~/Library/Containers/ru.keepcoder.Telegram.TelegramShare",
    "~/Library/Cookies/ru.keepcoder.Telegram.binarycookies",
    "~/Library/Group Containers/*.ru.keepcoder.Telegram",
    "~/Library/Preferences/ru.keepcoder.Telegram.plist",
    "~/Library/Saved Application State/ru.keepcoder.Telegram.savedState",
  ]
end

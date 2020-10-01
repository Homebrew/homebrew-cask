cask "telegram" do
  version "7.1,206103"
  sha256 "c7596bdc89518b6f26eb4a0450ea45efb8bd6de346ebd159bf12003249daf60d"

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

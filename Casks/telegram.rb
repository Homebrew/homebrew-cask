cask "telegram" do
  version "7.2.3,208487"
  sha256 "85bc627b73dd1a628b977cced5a12a99fbdc67e66c119fac15e4610af0f2fee0"

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

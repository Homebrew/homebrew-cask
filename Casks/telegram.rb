cask "telegram" do
  version "8.8,232680"
  sha256 "07071fdec9e1c035bc6ed952b9ac27ebfda75529ebe67e0a8c076a0007ff5159"

  url "https://osx.telegram.org/updates/Telegram-#{version.csv.first}.#{version.csv.second}.app.zip"
  name "Telegram for macOS"
  desc "Messaging app with a focus on speed and security"
  homepage "https://macos.telegram.org/"

  livecheck do
    url "https://osx.telegram.org/updates/versions.xml"
    strategy :page_match do |page|
      page.scan(/Telegram[._-](\d+(?:\.\d+)+)\.(\d{6})\.app\.zip/)
          .map { |matches| "#{matches[0]},#{matches[1]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Telegram.app"

  uninstall quit: "ru.keepcoder.Telegram"

  zap trash: [
    "~/Library/Application Scripts/*.ru.keepcoder.Telegram",
    "~/Library/Application Scripts/*.ru.keepcoder.Telegram.TelegramShare",
    "~/Library/Application Scripts/ru.keepcoder.Telegram",
    "~/Library/Application Scripts/ru.keepcoder.Telegram.TelegramShare",
    "~/Library/Application Support/ru.keepcoder.Telegram",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/ru.keepcoder.Telegram",
    "~/Library/Caches/ru.keepcoder.Telegram",
    "~/Library/Containers/ru.keepcoder.Telegram",
    "~/Library/Containers/ru.keepcoder.Telegram.TelegramShare",
    "~/Library/Cookies/ru.keepcoder.Telegram.binarycookies",
    "~/Library/Group Containers/*.ru.keepcoder.Telegram",
    "~/Library/Group Containers/*.ru.keepcoder.Telegram.TelegramShare",
    "~/Library/HTTPStorages/ru.keepcoder.Telegram",
    "~/Library/Preferences/ru.keepcoder.Telegram.plist",
    "~/Library/Saved Application State/ru.keepcoder.Telegram.savedState",
  ]
end

cask "yandex-music" do
  version "5.126.1"
  sha256 "2bd582ea6fae35753851082b2bd8aaef2dc1c0a3e74a2dc13d613115e604d436"

  url "https://desktop.app.music.yandex.net/stable/Yandex_Music_universal_#{version}.dmg"
  name "Yandex Music"
  desc "Tune in to Yandex Music and get personal recommendations"
  homepage "https://music.yandex.ru/"

  livecheck do
    url "https://desktop.app.music.yandex.net/stable/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Яндекс Музыка.app", target: "Yandex Music.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ru.yandex.desktop.music.sfl*",
    "~/Library/Application Support/YandexMusic",
    "~/Library/Logs/YandexMusic",
    "~/Library/Preferences/ru.yandex.desktop.music.plist",
    "~/Library/Saved Application State/ru.yandex.desktop.music.savedState",
  ]
end

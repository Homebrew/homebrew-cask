cask "yandex-music" do
  version "5.127.0"
  sha256 "bff8c229cb18e8b5d5031ca805f4598e2eb0fc59999504768e5d4c5b3f08b7cf"

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

cask "yandex-music" do
  version "5.4.2"
  sha256 "d93b00e853d7ada558ab68533480a9bbc5bfc7fa472bb53a8619495f1fb82b42"

  url "https://music-desktop-application.s3.yandex.net/stable/Yandex_Music_universal_#{version}.dmg",
      verified: "music-desktop-application.s3.yandex.net/stable/"
  name "Yandex Music"
  desc "Tune in to Yandex Music and get personal recommendations"
  homepage "https://music.yandex.ru/"

  livecheck do
    url "https://music-desktop-application.s3.yandex.net/stable/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Яндекс Музыка.app"

  zap trash: [
    "~/Library/Application Support/YandexMusic",
    "~/Library/Logs/YandexMusic",
    "~/Library/Saved Application State/ru.yandex.desktop.music.savedState",
  ]
end

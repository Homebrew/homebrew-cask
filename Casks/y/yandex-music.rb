cask "yandex-music" do
  version "5.24.1"
  sha256 "99f984c0b80c370df59fa4fe4cbce98abd6a853817b69c4e8475503fbbe872e1"

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

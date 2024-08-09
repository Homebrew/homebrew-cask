cask "yandex-music" do
  version "5.10.2"
  sha256 "f3e7e4a89fc7104f9ea01fdbec75d0be6969b45f432f4896b6d3ca64bd6de19a"

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

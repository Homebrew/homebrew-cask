cask "yandex-music" do
  version "5.105.3"
  sha256 "72e22b0c3acc4bcfd9062609d04c2240a9699b9108d0ac2b61387966a81ad6eb"

  url "https://desktop.app.music.yandex.net/stable/Yandex_Music_universal_#{version}.dmg",
      verified: "desktop.app.music.yandex.net/stable/"
  name "Yandex Music"
  desc "Tune in to Yandex Music and get personal recommendations"
  homepage "https://music.yandex.ru/"

  livecheck do
    url "https://desktop.app.music.yandex.net/stable/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Яндекс Музыка.app"

  zap trash: [
    "~/Library/Application Support/YandexMusic",
    "~/Library/Logs/YandexMusic",
    "~/Library/Saved Application State/ru.yandex.desktop.music.savedState",
  ]
end

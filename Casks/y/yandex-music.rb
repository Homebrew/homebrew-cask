cask "yandex-music" do
  version "5.109.1"
  sha256 "76e3e57f975d73b387639f334d544f2356d864da810a530a56a76de2135818de"

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

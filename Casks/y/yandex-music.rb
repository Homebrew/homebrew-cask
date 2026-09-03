cask "yandex-music" do
  version "5.118.1"
  sha256 "f29865136036cdc0f17ee8a06a1abf598f19207b36df8d98d560e045934d31b0"

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

  app "Яндекс Музыка.app"

  zap trash: [
    "~/Library/Application Support/YandexMusic",
    "~/Library/Logs/YandexMusic",
    "~/Library/Saved Application State/ru.yandex.desktop.music.savedState",
  ]
end

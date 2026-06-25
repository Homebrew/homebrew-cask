cask "yandex-music" do
  version "5.108.3"
  sha256 "8c9b72f07e7b3012795a03c8b982b70fd1a881ed85fd6155f6be9f9675168c98"

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

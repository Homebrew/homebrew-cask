cask "yandex-music" do
  version "5.115.3"
  sha256 "b1775cfe37d02699d139915157d0a78bd8210149b7f7c393683d7571428334eb"

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

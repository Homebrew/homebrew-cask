cask "yandex-music" do
  version "5.121.2"
  sha256 "f0cae09ebb2ba5e025eb69c3e4a9b142d7aaacba143d9652ab99579072a38dfd"

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
    "~/Library/Application Support/YandexMusic",
    "~/Library/Logs/YandexMusic",
    "~/Library/Saved Application State/ru.yandex.desktop.music.savedState",
  ]
end

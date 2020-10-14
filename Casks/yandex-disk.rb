cask "yandex-disk" do
  version "3.2.0,30"
  sha256 "cc849b7b2f4b6b2cbb346344bd740b9fd488d6eeb34c5393c35d4ffd5cc6f869"

  url "https://disk.yandex.ru/download/YandexDisk#{version.after_comma}.dmg/?instant=1"
  name "Yandex.Disk"
  desc "Cloud storage"
  homepage "https://disk.yandex.ru/"

  auto_updates true

  app "Yandex.Disk.2.app"

  zap trash: [
    "~/Library/Application Support/Yandex.Disk.2",
    "~/Library/Preferences/ru.yandex.desktop.disk.screenshots.plist",
    "~/Library/Preferences/ru.yandex.desktop.disk2.plist",
  ]
end

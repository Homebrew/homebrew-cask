cask 'yandex-disk' do
  version '3.1.0,30'
  sha256 '37a80520b7e04511d3187a1b009533635cff543f62243aa82992c4223b9a830d'

  url "https://disk.yandex.ru/download/YandexDisk#{version.after_comma}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.2.app'
end

cask 'yandex-disk' do
  version '3.0'
  sha256 '3df92f3be180e8db7aa7a03d0ebe0d690ab5eecff0b2567705290d2662599a7c'

  url "https://disk.yandex.ru/download/YandexDisk#{version.no_dots}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.2.app'
end

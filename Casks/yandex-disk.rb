cask 'yandex-disk' do
  version '3.0'
  sha256 '4cc3faad156c7c8fcddece0233c8b4042d239b4fa61f9772f6ae2dd59b9cc0f2'

  url "https://disk.yandex.ru/download/YandexDisk#{version.no_dots}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.2.app'
end

cask 'yandex-disk' do
  version '3.0'
  sha256 'd5f9c1b43faeb99e30e203c612d678cbe6d2f08d187c74e7cf1c6e7efac5c53c'

  url "https://disk.yandex.ru/download/YandexDisk#{version.no_dots}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.2.app'
end

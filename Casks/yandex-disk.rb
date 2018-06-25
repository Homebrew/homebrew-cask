cask 'yandex-disk' do
  version '3.0'
  sha256 'dac1f0e1710bc06b59a872148c940fbd15f8e34e4e5e22009caba5d67163f888'

  url "https://disk.yandex.ru/download/YandexDisk#{version.no_dots}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.2.app'
end

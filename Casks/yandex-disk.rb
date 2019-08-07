cask 'yandex-disk' do
  version '3.1.6,30'
  sha256 '62b8d3a9d6f6b7e01af7c20031f02487198ece58b76cf78a19dc662e7db06059'

  url "https://disk.yandex.ru/download/YandexDisk#{version.after_comma}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.2.app'
end

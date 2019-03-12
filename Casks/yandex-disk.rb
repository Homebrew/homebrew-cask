cask 'yandex-disk' do
  version '3.0.9'
  sha256 'f3a45f50e315d58e7b3a8bc3611ba3a8b42637d1ba24cc63ea8c08038af0b434'

  url "https://disk.yandex.ru/download/YandexDisk#{version.major_minor.no_dots}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.2.app'
end

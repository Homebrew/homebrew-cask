cask 'yandex-disk' do
  version '3.0.9'
  sha256 '305fc29d6e6dc5598b4b64aa6f7140f664b77ad3a8a0b93a1d969f0b239ed162'

  url "https://disk.yandex.ru/download/YandexDisk#{version.major_minor.no_dots}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.2.app'
end

cask 'yandex-disk' do
  version '3.0.5'
  sha256 '173fd9e59143c0efe985ef822a215f7697e046b8469e94c2f87215f33aa90d06'

  url "https://disk.yandex.ru/download/YandexDisk#{version.major_minor.no_dots}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.2.app'
end

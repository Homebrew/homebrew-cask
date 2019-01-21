cask 'yandex-disk' do
  version '3.0.8'
  sha256 '9f904de803b7f3ced6a6b8607969ea9cd4a5c3e577cecade9b1000d1e91d3197'

  url "https://disk.yandex.ru/download/YandexDisk#{version.major_minor.no_dots}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.2.app'
end

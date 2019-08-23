cask 'yandex-disk' do
  version '3.1.7,30'
  sha256 '1e45fa3cd10aec6028a1014bb2589f1384b0aee46fc58ae46ac4c1a007ba985f'

  url "https://disk.yandex.ru/download/YandexDisk#{version.after_comma}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.2.app'
end

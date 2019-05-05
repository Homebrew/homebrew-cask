cask 'yandex-disk' do
  version '3.1.1,30'
  sha256 '73cdda78dd7a7e80fd43998c18cc231a7ae070481bdcd8a6e224fd77bcae651e'

  url "https://disk.yandex.ru/download/YandexDisk#{version.after_comma}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.2.app'
end

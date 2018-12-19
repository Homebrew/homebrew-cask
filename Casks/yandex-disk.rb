cask 'yandex-disk' do
  version '3.0.6'
  sha256 '2ce22942f41dfd13dc73fc4dacb0713218df184cfc46ea2d08734be8deae446e'

  url "https://disk.yandex.ru/download/YandexDisk#{version.major_minor.no_dots}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.2.app'
end

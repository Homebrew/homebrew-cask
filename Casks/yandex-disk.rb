cask 'yandex-disk' do
  version '3.0'
  sha256 '9fd19073892d080a835ab90403d6be155467daa7c71d9900154f4dadf71eff11'

  url "https://disk.yandex.ru/download/YandexDisk#{version.no_dots}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.2.app'
end

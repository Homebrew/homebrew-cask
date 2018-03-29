cask 'yandex-disk' do
  version :latest
  sha256 :no_check

  url 'https://disk.yandex.ru/download/YandexDisk30.dmg/?instant=1'
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.app'
end

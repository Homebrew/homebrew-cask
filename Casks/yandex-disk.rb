cask 'yandex-disk' do
  version '3.1.3,30'
  sha256 'fa5e6819426d0f4ad442e7ee298593699d9b72e4e455e322419f33df6bee1043'

  url "https://disk.yandex.ru/download/YandexDisk#{version.after_comma}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.2.app'
end

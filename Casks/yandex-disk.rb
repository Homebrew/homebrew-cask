cask 'yandex-disk' do
  version '3.0'
  sha256 '2a4a1bf61b92a0cea2099330bfc35d2ccf2f579244985cbd2644740705a22cae'

  url "https://disk.yandex.ru/download/YandexDisk#{version.no_dots}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.2.app'
end

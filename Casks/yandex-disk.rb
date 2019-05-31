cask 'yandex-disk' do
  version '3.1.4,30'
  sha256 '2a64a4c1297f84c967459747891ad138966f93cf091b895070dcf23389c457cd'

  url "https://disk.yandex.ru/download/YandexDisk#{version.after_comma}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.2.app'
end

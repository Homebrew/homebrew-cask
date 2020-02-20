cask 'yandex-disk' do
  version '3.1.11,30'
  sha256 'c63d03284d3d7d3039b98a6447defcf0ad5b6e1062250e76e93b80a7368d4fb1'

  url "https://disk.yandex.ru/download/YandexDisk#{version.after_comma}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  auto_updates true

  app 'Yandex.Disk.2.app'

  zap trash: [
               '~/Library/Application Support/Yandex.Disk.2',
               '~/Library/Preferences/ru.yandex.desktop.disk.screenshots.plist',
               '~/Library/Preferences/ru.yandex.desktop.disk2.plist',
             ]
end

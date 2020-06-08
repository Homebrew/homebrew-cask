cask 'yandex-disk' do
  version '3.1.19,30'
  sha256 '8259906fb6b1032c77987228d3dd120da08e564ff1028eeea8332b69b29b393a'

  url "https://disk.yandex.ru/download/YandexDisk#{version.after_comma}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  auto_updates true

  app 'Yandex.Disk.app'

  zap trash: [
               '~/Library/Application Support/Yandex.Disk.2',
               '~/Library/Preferences/ru.yandex.desktop.disk.screenshots.plist',
               '~/Library/Preferences/ru.yandex.desktop.disk2.plist',
             ]
end

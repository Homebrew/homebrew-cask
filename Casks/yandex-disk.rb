cask 'yandex-disk' do
  version '3.1.10,30'
  sha256 'e1eef43b41f1fc59cf4e1816cd37d7f769d79979020d8a885fe8644a1d17f874'

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

cask 'yandex-disk' do
  version '3.1.12,30'
  sha256 '3dfe93e18950cd3d8f91f4d3f379972ec8436783a304075471994eb22167562f'

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

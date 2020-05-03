cask 'yandex-disk' do
  version '3.1.17,30'
  sha256 'f94f29b997ab5342158c5f67e32ddd678fb34d48a2fd6ddbbbafeecdfd5393db'

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

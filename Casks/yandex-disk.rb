cask 'yandex-disk' do
  version '1.3.8,30'
  sha256 'd8ecadecc3aaf8a3b920173fc8e9d45951cbe4707e941fbbf2d371e376d70e0f'

  url "https://disk.yandex.ru/download/YandexDisk#{version.after_comma}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.2.app'
end

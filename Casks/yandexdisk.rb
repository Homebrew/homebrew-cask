cask :v1 => 'yandexdisk' do
  version :latest
  sha256 :no_check

  url 'https://disk.yandex.com/download/Yandex.Disk.Mac.dmg'
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.com/'
  license :gratis

  app 'Yandex.Disk.app'
end

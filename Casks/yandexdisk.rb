cask :v1 => 'yandexdisk' do
  version :latest
  sha256 :no_check

  url 'https://disk.yandex.com/download/Yandex.Disk.Mac.dmg'
  homepage 'https://disk.yandex.com/'
  license :unknown

  app 'Yandex.Disk.app'
end

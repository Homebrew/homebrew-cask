cask 'yandex-disk' do
  version '3.0.10'
  sha256 'e11be96d368fe551d142ee9fbd7d3b463b8ef85dbafa38985b677bcdf7239ea7'

  url "https://disk.yandex.ru/download/YandexDisk#{version.major_minor.no_dots}.dmg/?instant=1"
  name 'Yandex.Disk'
  homepage 'https://disk.yandex.ru/'

  app 'Yandex.Disk.2.app'
end

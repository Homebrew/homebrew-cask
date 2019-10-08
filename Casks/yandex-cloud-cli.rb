cask 'yandex-cloud-cli' do
  version '0.41.1'
  sha256 '5a61097604d3b8d2d402d7d8fe878860399e7e8795c901bd01032e47586264c9'

  # yandexcloud.net/yandexcloud-yc was verified as official when first introduced to the cask
  url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/amd64/yc"
  name 'Yandex Cloud CLI'
  homepage 'https://cloud.yandex.com/docs/cli/'

  binary 'yc'
end

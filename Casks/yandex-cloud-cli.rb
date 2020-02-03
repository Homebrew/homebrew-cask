cask 'yandex-cloud-cli' do
  version '0.50.0'
  sha256 '7deb7001a19d8cb6c2b7834c8c9aa55f7123e3e6d6ccb3231accd8f1a4df9321'

  # yandexcloud.net/yandexcloud-yc was verified as official when first introduced to the cask
  url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/amd64/yc"
  name 'Yandex Cloud CLI'
  homepage 'https://cloud.yandex.com/docs/cli/'

  binary 'yc'
end

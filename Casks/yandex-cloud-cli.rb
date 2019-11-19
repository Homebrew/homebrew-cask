cask 'yandex-cloud-cli' do
  version '0.44.0'
  sha256 'b32069a197dd1724176ff6f71c2ea4c81d4ffefc98b64b2a00531cfeb7f87a5d'

  # yandexcloud.net/yandexcloud-yc was verified as official when first introduced to the cask
  url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/amd64/yc"
  name 'Yandex Cloud CLI'
  homepage 'https://cloud.yandex.com/docs/cli/'

  binary 'yc'
end

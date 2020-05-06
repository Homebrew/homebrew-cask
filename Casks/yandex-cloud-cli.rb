cask 'yandex-cloud-cli' do
  version '0.56.0'
  sha256 'bdff86cb0917a47dff5ef8c299d81f7f85e14e132a62de1291061cc701138d85'

  # yandexcloud.net/yandexcloud-yc/ was verified as official when first introduced to the cask
  url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/amd64/yc"
  name 'Yandex Cloud CLI'
  homepage 'https://cloud.yandex.com/docs/cli/'

  binary 'yc'
end

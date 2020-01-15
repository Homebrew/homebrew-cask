cask 'yandex-cloud-cli' do
  version '0.48.0'
  sha256 'f389cdfae85e99939bc77599be464e05d7afd957ced3887b44e91e4818bf46d3'

  # yandexcloud.net/yandexcloud-yc was verified as official when first introduced to the cask
  url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/amd64/yc"
  name 'Yandex Cloud CLI'
  homepage 'https://cloud.yandex.com/docs/cli/'

  binary 'yc'
end

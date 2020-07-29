cask 'yandex-cloud-cli' do
  version '0.57.0'
  sha256 '0c80606fb67fbe28d62ff583b971bc391d403e568fcca2192109760c3ff4c9cd'

  # yandexcloud.net/yandexcloud-yc/ was verified as official when first introduced to the cask
  url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/amd64/yc"
  name 'Yandex Cloud CLI'
  homepage 'https://cloud.yandex.com/docs/cli/'

  binary 'yc'
end

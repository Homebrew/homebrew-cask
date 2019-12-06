cask 'yandex-cloud-cli' do
  version '0.45.0'
  sha256 'de5783a3bb860cd0bb32877eb909c5735d056fe92a2a09dfaf9a125aeea4787f'

  # yandexcloud.net/yandexcloud-yc was verified as official when first introduced to the cask
  url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/amd64/yc"
  name 'Yandex Cloud CLI'
  homepage 'https://cloud.yandex.com/docs/cli/'

  binary 'yc'
end

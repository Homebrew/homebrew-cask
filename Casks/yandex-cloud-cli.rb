cask 'yandex-cloud-cli' do
  version '0.51.0'
  sha256 '52031b98a4121fd0196cdbcf1f35bf364bfafe60cd4cfb1f579560f14213ac91'

  # yandexcloud.net/yandexcloud-yc was verified as official when first introduced to the cask
  url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/amd64/yc"
  name 'Yandex Cloud CLI'
  homepage 'https://cloud.yandex.com/docs/cli/'

  binary 'yc'
end

cask 'yandex-cloud-cli' do
  version '0.42.0'
  sha256 '48e2950d88ae10391e01ab00a167b012e7112619693bb82a00d5a4148099aac2'

  # yandexcloud.net/yandexcloud-yc was verified as official when first introduced to the cask
  url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/amd64/yc"
  name 'Yandex Cloud CLI'
  homepage 'https://cloud.yandex.com/docs/cli/'

  binary 'yc'
end

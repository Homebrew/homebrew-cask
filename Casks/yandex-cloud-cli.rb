cask 'yandex-cloud-cli' do
  version '0.46.0'
  sha256 '38bbd67e5e2ec199acbb9c97668b1c052f9c4fee39a6b3e8b7dd55cdb3a0be7a'

  # yandexcloud.net/yandexcloud-yc was verified as official when first introduced to the cask
  url "https://storage.yandexcloud.net/yandexcloud-yc/release/#{version}/darwin/amd64/yc"
  name 'Yandex Cloud CLI'
  homepage 'https://cloud.yandex.com/docs/cli/'

  binary 'yc'
end

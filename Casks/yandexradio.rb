cask 'yandexradio' do
  version '1.5.7(126)'
  sha256 '59fbe6b7ff5b10a1e0ea0e94d03a91f2729be920763a7f2e3cde47f96c2fc1f9'

  url "http://tutra.ru/app/Yandex.Radio.#{version}.dmg"
  appcast 'http://tutra.ru/app/yandex.radio/appcast.xml'
  name 'Yandex.Radio'
  homepage 'http://tutra.ru/app/yandex.radio/'

  app 'Yandex.Radio.app'
end

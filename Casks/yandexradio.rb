cask 'yandexradio' do
  version '2.0.2,145'
  sha256 '9711ee8dc61e20133f8c6da45ad8df178e38f33614a95162d3c26fb5c655470f'

  url "http://tutra.ru/app/Yandex.Radio.#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'http://tutra.ru/app/yandex.radio/appcast.xml'
  name 'Yandex.Radio'
  homepage 'http://tutra.ru/app/yandex.radio/'

  app 'Yandex.Radio.app'
end

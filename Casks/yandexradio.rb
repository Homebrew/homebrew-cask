cask 'yandexradio' do
  version '2.0.1,144'
  sha256 'd0a26c75dbc226f837941f309101a0231eea2db945fb0449c45cf771ea960b1c'

  url "http://tutra.ru/app/Yandex.Radio.#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'http://tutra.ru/app/yandex.radio/appcast.xml'
  name 'Yandex.Radio'
  homepage 'http://tutra.ru/app/yandex.radio/'

  app 'Yandex.Radio.app'
end

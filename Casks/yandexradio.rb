cask 'yandexradio' do
  version '2.0.0,143'
  sha256 'd27d49c26e3082c4562f7aea758e795ed48ceab595f50c8e5da8d375c71d6989'

  url "http://tutra.ru/app/Yandex.Radio.#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'http://tutra.ru/app/yandex.radio/appcast.xml'
  name 'Yandex.Radio'
  homepage 'http://tutra.ru/app/yandex.radio/'

  app 'Yandex.Radio.app'
end

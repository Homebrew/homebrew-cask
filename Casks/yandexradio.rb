cask "yandexradio" do
  version "2.0.2,145"
  sha256 "dad4c3ef5acc5543ce2ea5a44ea85cee2443d339b04d9fe566fb9dd2538fb67c"

  url "http://tutra.ru/app/Yandex.Radio.#{version.before_comma}-#{version.after_comma}.dmg"
  appcast "http://tutra.ru/app/yandex.radio/appcast.xml"
  name "Yandex.Radio"
  homepage "http://tutra.ru/app/yandex.radio/"

  app "Yandex.Radio.app"
end

cask :v1 => 'yandex' do
  version :latest
  sha256 :no_check

  url 'https://download.cdn.yandex.net/browser/yandex/ru/Yandex.dmg'
  homepage 'http://browser.yandex.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Yandex.app'
end

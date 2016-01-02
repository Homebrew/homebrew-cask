cask 'yandex' do
  version :latest
  sha256 :no_check

  url 'https://download.cdn.yandex.net/browser/yandex/ru/Yandex.dmg'
  name 'Yandex.Browser'
  homepage 'https://browser.yandex.com/'
  license :gratis

  app 'Yandex.app'
end

cask 'yandex' do
  version :latest
  sha256 :no_check

  # yandex.net was verified as official when first introduced to the cask
  url 'https://download.cdn.yandex.net/browser/yandex/ru/Yandex.dmg'
  name 'Yandex.Browser'
  homepage 'https://browser.yandex.ru/desktop/'

  app 'Yandex.app'
end

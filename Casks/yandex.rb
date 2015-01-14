cask :v1 => 'yandex' do
  version :latest
  sha256 :no_check

  url 'https://download.cdn.yandex.net/browser/yandex/ru/Yandex.dmg'
  homepage 'http://browser.yandex.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Yandex.app'
end

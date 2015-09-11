cask :v1 => 'yandex-beta' do
  version :latest
  sha256 :no_check

  url 'https://browser.yandex.ru/download/?betacusto=1'
  name 'Yandex browser beta (Custo)'
  homepage 'https://browser.yandex.ru/beta/'
  license :commercial

  app 'Yandex.app'
end

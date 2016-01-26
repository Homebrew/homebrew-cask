cask 'yimello' do
  version :latest
  sha256 :no_check

  url 'http://yimello.adriencadet.com/assets/zip/yimello-mac.zip'
  name 'Yimello'
  homepage 'http://yimello.adriencadet.com/'
  license :mit

  app 'Yimello.app'
end

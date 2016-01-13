cask 'youview' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/YouView.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/YouView',
          :checkpoint => '8dfd8b4bc472993e9301a2bdb05a885a612c95b969cd064045bca4bb7284febe'
  name 'YouView'
  homepage 'https://mrgeckosmedia.com/applications/info/YouView'
  license :oss

  app 'YouView.app'
end

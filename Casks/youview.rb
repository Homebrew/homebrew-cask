cask 'youview' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/YouView.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/YouView',
          :checkpoint => '1e311e146e7a80cd0488baef8f007610552c6450fc89011811e01ecedc8ce37a'
  name 'YouView'
  homepage 'https://mrgeckosmedia.com/applications/info/YouView'
  license :oss

  app 'YouView.app'
end

cask 'youview' do
  version '0.6.1'
  sha256 '95538a324d9344ccd1eb46f4b4dbdf9cb2dc6d1259794b14e02683c35660d5dd'

  url 'https://download.mrgeckosmedia.com/YouView.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/YouView',
          checkpoint: '1e311e146e7a80cd0488baef8f007610552c6450fc89011811e01ecedc8ce37a'
  name 'YouView'
  homepage 'https://mrgeckosmedia.com/applications/info/YouView'
  license :oss

  app 'YouView.app'
end

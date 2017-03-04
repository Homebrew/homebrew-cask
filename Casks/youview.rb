cask 'youview' do
  version '0.6.1'
  sha256 '95538a324d9344ccd1eb46f4b4dbdf9cb2dc6d1259794b14e02683c35660d5dd'

  url 'https://download.mrgeckosmedia.com/YouView.zip'
  appcast 'https://mrgeckosmedia.com/applications/releasenotes/YouView',
          checkpoint: '37a9df42602c6f4c3a135691e75a30cf8063474df96ce5197b246138146eaa08'
  name 'YouView'
  homepage 'https://mrgeckosmedia.com/applications/info/YouView'

  app 'YouView.app'
end

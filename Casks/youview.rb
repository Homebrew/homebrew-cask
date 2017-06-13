cask 'youview' do
  version '0.6.1'
  sha256 '95538a324d9344ccd1eb46f4b4dbdf9cb2dc6d1259794b14e02683c35660d5dd'

  url 'https://download.mrgeckosmedia.com/YouView.zip'
  appcast 'https://mrgeckosmedia.com/applications/releasenotes/YouView',
          checkpoint: '5a5183001efbac77e538f0087a3d322629eb982668f83d3b9f964707b9e0aaca'
  name 'YouView'
  homepage 'https://mrgeckosmedia.com/applications/info/YouView'

  app 'YouView.app'
end

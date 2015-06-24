cask :v1 => 'youview' do
  version :latest
  sha256 :no_check

  url 'http://download.mrgeckosmedia.com/YouView.zip'
  appcast 'http://mrgeckosmedia.com/applications/appcast/YouView'
  name 'YouView'
  homepage 'https://mrgeckosmedia.com/applications/info/YouView'
  license :oss

  app 'YouView.app'
end

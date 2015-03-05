cask :v1 => 'youview' do
  version :latest
  sha256 :no_check

  url 'http://download.mrgeckosmedia.com/YouView.zip'
  appcast 'http://mrgeckosmedia.com/applications/appcast/YouView'
  name 'YouView'
  homepage 'https://mrgeckosmedia.com/applications/info/YouView'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'YouView/YouView.app'
end

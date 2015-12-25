cask 'youview' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/YouView.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/YouView',
          :sha256 => 'af50e435974bcd8920e231d829918457565fe5a4709fd39aadc8b699c9c284ad'
  name 'YouView'
  homepage 'https://mrgeckosmedia.com/applications/info/YouView'
  license :oss

  app 'YouView.app'
end

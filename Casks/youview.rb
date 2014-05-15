class Youview < Cask
  url 'http://download.mrgeckosmedia.com/YouView.zip'
  appcast 'http://mrgeckosmedia.com/applications/appcast/YouView'
  homepage 'https://mrgeckosmedia.com/applications/info/YouView'
  version 'latest'
  sha256 :no_check
  link 'YouView/YouView.app'
end

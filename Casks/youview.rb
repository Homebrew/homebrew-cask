class Youview < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://download.mrgeckosmedia.com/YouView.zip'
  appcast 'http://mrgeckosmedia.com/applications/appcast/YouView'
  homepage 'https://mrgeckosmedia.com/applications/info/YouView'

  link 'YouView/YouView.app'
end

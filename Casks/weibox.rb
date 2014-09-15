class Weibox < Cask
  version '2.6.1'
  sha256 '60c023ba7cc9f93ac72a7b1a4e8a518595348f4f6d8c4fbef0af8822c318a908'

  url 'https://weiboformac.sinaapp.com/downloads/2.6.1.release.zip'
  appcast 'http://weiboformac.sinaapp.com/appcast/wm2.xml'
  homepage 'http://weiboformac.sinaapp.com'

  app 'WeiboX.app'
end

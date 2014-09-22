class TexLiveUtility < Cask
  version '1.17'
  sha256 '9a913cbf0e158258c513fc0905f65632b36d372d1b4b9afe6b6f08dd005ff232'

  url 'https://mactlmgr.googlecode.com/files/TeX%20Live%20Utility.app-1.17.tar.gz'
  appcast 'http://mactlmgr.googlecode.com/svn/trunk/appcast/tlu_appcast.xml'
  homepage 'https://code.google.com/p/mactlmgr/'

  app 'TeX Live Utility.app'
end

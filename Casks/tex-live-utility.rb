cask :v1 => 'tex-live-utility' do
  version '1.17'
  sha256 '9a913cbf0e158258c513fc0905f65632b36d372d1b4b9afe6b6f08dd005ff232'

  url "https://mactlmgr.googlecode.com/files/TeX%20Live%20Utility.app-#{version}.tar.gz"
  appcast 'http://mactlmgr.googlecode.com/svn/trunk/appcast/tlu_appcast.xml',
          :sha256 => '46284194061f7d6cc766ac15ed11267a4dbaa27a6f6643b3afe930fe7d89d746'
  homepage 'https://code.google.com/p/mactlmgr/'
  license :oss

  app 'TeX Live Utility.app'
end

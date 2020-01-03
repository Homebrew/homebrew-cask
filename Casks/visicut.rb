cask 'visicut' do
  version '1.9-35-g98e949b3'
  sha256 'd09a6addf0a96bd695d8e86899d0874e01100dd12bc6d02841eb1328373dda75'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast 'https://download.visicut.org'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end

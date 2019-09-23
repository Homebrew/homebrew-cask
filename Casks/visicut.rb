cask 'visicut' do
  version '1.8-94-g0188ab30'
  sha256 '329b69c5f108d07d2f1885b727ef58d2cc5c4496d62cd5b365e2e51739f9f919'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast 'https://download.visicut.org'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end

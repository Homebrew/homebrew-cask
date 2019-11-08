cask 'visicut' do
  version '1.8-107-g0e7ccc95'
  sha256 'f72f5632d9dbec568207693f2caf69094e2644447a549cd0916792ad019a1a10'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast 'https://download.visicut.org'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end

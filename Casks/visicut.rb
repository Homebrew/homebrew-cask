cask 'visicut' do
  version '1.8-105-g369693d4'
  sha256 'eea73ba174a18def77db323a760f8f92d72004261ba18b104fa3944861c29d53'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast 'https://download.visicut.org'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end

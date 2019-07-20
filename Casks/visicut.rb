cask 'visicut' do
  version '1.8-80-g681e741c'
  sha256 '29d319637d16e9c32d9181726274e8a1bd7e3bcf70e5f5d04cbff58ca257d270'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast 'https://download.visicut.org'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end

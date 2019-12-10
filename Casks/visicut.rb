cask 'visicut' do
  version '1.9-16-gb498e3a1'
  sha256 '05a85c47ab8e0d9ce119732737bb7fd41b237f540550a34d22d0ee95c28b9d52'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast 'https://download.visicut.org'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end

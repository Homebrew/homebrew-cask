cask 'visicut' do
  version '1.9-8-g55142c25'
  sha256 '54df4ac1798dfc8abde8384dc66552999b61771a00c4804c1be57c1858f23df6'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast 'https://download.visicut.org'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end

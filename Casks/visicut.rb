cask 'visicut' do
  version '1.9-24-gea6d76ce'
  sha256 '6d62fdc0c06ba146d735f6190ebb591d86e694ba52446ca75f86de6c41a264c8'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast 'https://download.visicut.org'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end

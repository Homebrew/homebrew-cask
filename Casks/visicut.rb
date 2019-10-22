cask 'visicut' do
  version '1.8-99-g0a2ae54b'
  sha256 'e1b38e1c0c9039155300899f21aa53fbb11c6dc39fc430005393e07db8cd64fe'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast 'https://download.visicut.org'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end

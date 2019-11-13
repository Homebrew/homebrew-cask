cask 'visicut' do
  version '1.9-2-gc3fd722f'
  sha256 '67f678dc07d81efe7f416b583a6110d54f11233baa5a29b9ee448f1b4d0f3d86'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast 'https://download.visicut.org'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end

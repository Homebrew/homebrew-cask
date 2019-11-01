cask 'visicut' do
  version '1.8-103-g68070b76'
  sha256 '299c19b3d123c2371583feddc8f93ae7e9f272850f42b9d43118604b1ba6ba03'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast 'https://download.visicut.org'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end

cask 'visicut' do
  version '1.9-70-g2c0db535'
  sha256 '7549aec494c173d94b8210ed5ac49a779d62e99cbe556a3101490a717b987dda'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast 'https://download.visicut.org'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end

cask 'visicut' do
  version '1.9-36-g6537f945'
  sha256 'd368607b84ad2a14fbe99d4390a8320cb4283b02309f8d8c67ab4b5f56ea6bfd'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast 'https://download.visicut.org'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end

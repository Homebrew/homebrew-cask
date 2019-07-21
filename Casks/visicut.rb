cask 'visicut' do
  version '1.8-79-g6f87ba78'
  sha256 '0184734ade419792addbb46f7be591e6dcaf1f8b91f639b9ea7be5c7a9ad8ec0'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast 'https://download.visicut.org'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end

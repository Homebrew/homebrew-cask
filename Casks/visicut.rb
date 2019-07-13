cask 'visicut' do
  version '1.8-79'
  sha256 '07b01fd9afb3a4f82c5c9fecae6fd9dc88aa75007415bc4d5a8d0c738285d9de'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}-g840df7cc.zip"
  appcast 'https://github.com/t-oster/VisiCut/releases.atom'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end

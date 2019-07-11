cask 'visicut' do
  version '1.8-77'
  sha256 'ae49765fd5978e8706db546fa05f0ec69c00cf189cbf287d0e4d41f7f44548cb'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}-g840df7cc.zip"
  appcast 'https://github.com/t-oster/VisiCut/releases.atom'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end

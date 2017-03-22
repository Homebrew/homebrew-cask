cask 'vrep' do
  version '3.3.2'
  sha256 'b06be6f7c2902a6826ff3ec739e928d7473d6dd4cca22ac507014da4fbf0ff6b'

  url "http://coppeliarobotics.com/files/V-REP_PRO_EDU_V#{version.dots_to_underscores}_Mac.zip"
  appcast 'http://www.coppeliarobotics.com/helpFiles/en/versionInfo.htm',
          checkpoint: '89c5f388f8d0fa79c873bdc9a978d43248017367c52116a9a966b480d6f24e4b'
  name 'V-REP'
  homepage 'http://www.coppeliarobotics.com/index.html'

  suite "V-REP_PRO_EDU_V#{version.dots_to_underscores}_Mac"
end

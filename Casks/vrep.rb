cask 'vrep' do
  version '3.6.0'
  sha256 '5eb511deb3c0f0b305b64f6731fe53dc69e4e48fb9f516d8c980b3e31951bb5b'

  url "http://coppeliarobotics.com/files/V-REP_PRO_EDU_V#{version.dots_to_underscores}_Mac.zip"
  appcast 'http://www.coppeliarobotics.com/helpFiles/en/versionInfo.htm'
  name 'V-REP'
  homepage 'http://www.coppeliarobotics.com/index.html'

  suite "V-REP_PRO_EDU_V#{version.dots_to_underscores}_Mac"
end
